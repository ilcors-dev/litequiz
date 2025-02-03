import Axios, { AxiosRequestConfig, AxiosResponse } from "axios";

const api_url =
  typeof window === "undefined"
    ? process.env.NEXT_PUBLIC_API_URL
    : process.env.NEXT_PUBLIC_API_URL_BROWSER;
const app_url = process.env.NEXT_PUBLIC_APP_URL;

console.log("API URL: ", api_url);
console.log("APP URL: ", app_url);

type Routes = {
  getSession: {
    url: `/api/session`;
    method: "GET";
    response: { message: string; session: string };
  };

  // Quiz API
  getQuiz: {
    url: `/api/quiz/${number}`;
    method: "GET";
    params: { categoryId: number };
    response: WithHiddenAnswer[];
  };

  // Categories API
  getCategories: {
    url: `/api/categories`;
    method: "GET";
    response: CategoryWithQuestionCount[];
  };
  showCategory: {
    url: `/api/categories/${number}`;
    method: "GET";
    params: { categoryId: number };
    response: Categories;
  };
  updateCategory: {
    url: `/api/categories/${number}`;
    method: "PUT";
    params: { categoryId: number };
    body: UpdateCategories;
    response: void;
  };

  // Category Score Settings API
  getCategoryScoreSettings: {
    url: `/api/category-score-settings/${number}`;
    method: "GET";
    params: { category_id: number };
    response: CategoryScoreSettings[];
  };
  postCategoryScoreSettings: {
    url: `/api/category-score-settings/${number}`;
    method: "POST";
    params: { category_id: number };
    body: CategoryScoreSettingsPayload;
    response: void;
  };

  // Quiz Solution API
  getQuizSolution: {
    url: "/api/quiz-solution";
    method: "GET";
    response: QuizSolution;
  };

  // Quiz Status API
  isQuizActive: {
    url: "/api/quiz-status/is-active";
    method: "GET";
    response: QuizStatus;
  };
  getQuizStatus: {
    url: "/api/quiz-status";
    method: "GET";
    response: QuizAnswer[];
  };
  postQuizStatus: {
    url: "/api/quiz-status";
    method: "POST";
    body: QuizAnswer[];
    response: void;
  };
  destroyQuizStatus: {
    url: "/api/quiz-status";
    method: "DELETE";
    response: void;
  };
};

const routeMap: Record<keyof Routes, string> = {
  getSession: app_url + "/api/session",
  getQuiz: api_url + "/api/quiz/:categoryId",
  getCategories: api_url + "/api/categories",
  showCategory: api_url + "/api/categories/:categoryId",
  updateCategory: api_url + "/api/categories/:categoryId",
  getCategoryScoreSettings:
    api_url + "/api/category-score-settings/:category_id",
  postCategoryScoreSettings:
    api_url + "/api/category-score-settings/:category_id",
  getQuizSolution: api_url + "/api/quiz-solution",
  isQuizActive: api_url + "/api/quiz-status/is-active",
  getQuizStatus: api_url + "/api/quiz-status",
  postQuizStatus: api_url + "/api/quiz-status",
  destroyQuizStatus: api_url + "/api/quiz-status",
};

/**
 * Utility to replace dynamic parameters in the URL
 */
const route = <T extends keyof Routes>(
  routeKey: T,
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  params?: Routes[T] extends { params: any } ? Routes[T]["params"] : undefined,
): string => {
  let url = routeMap[routeKey];

  if (params) {
    for (const key in params) {
      url = url.replace(`:${key}`, encodeURIComponent(String(params[key])));
    }
  }

  return url;
};

const axiosInstance = Axios.create({
  withCredentials: true,
  headers: {
    "X-Requested-With": "XMLHttpRequest",
  },
});

/**
 * Typed API helper functions
 */
const api = {
  get: async <T extends keyof Routes>(
    routeKey: T,
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    params?: Routes[T] extends { params: any }
      ? Routes[T]["params"]
      : undefined,
    config?: AxiosRequestConfig,
  ): Promise<AxiosResponse<Routes[T]["response"]>> => {
    const response = await axiosInstance.get<Routes[T]["response"]>(
      route(routeKey, params),
      config,
    );
    return response;
  },

  post: async <T extends keyof Routes>(
    routeKey: T,
    data: "body" extends keyof Routes[T] ? Routes[T]["body"] : never,
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    params?: Routes[T] extends { params: any }
      ? Routes[T]["params"]
      : undefined,
    config?: AxiosRequestConfig,
  ): Promise<AxiosResponse<Routes[T]["response"]>> => {
    const response = await axiosInstance.post<Routes[T]["response"]>(
      route(routeKey, params),
      data,
      config,
    );
    return response;
  },

  put: async <T extends keyof Routes>(
    routeKey: T,
    data: "body" extends keyof Routes[T] ? Routes[T]["body"] : never,
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    params?: Routes[T] extends { params: any }
      ? Routes[T]["params"]
      : undefined,
    config?: AxiosRequestConfig,
  ): Promise<AxiosResponse<Routes[T]["response"]>> => {
    const response = await axiosInstance.put<Routes[T]["response"]>(
      route(routeKey, params),
      data,
      config,
    );
    return response;
  },

  delete: async <T extends keyof Routes>(
    routeKey: T,
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    params?: Routes[T] extends { params: any }
      ? Routes[T]["params"]
      : undefined,
    config?: AxiosRequestConfig,
  ): Promise<AxiosResponse<Routes[T]["response"]>> => {
    const response = await axiosInstance.delete<Routes[T]["response"]>(
      route(routeKey, params),
      config,
    );
    return response;
  },
};

/**
 * Axios request interceptor for handling cookies on the server-side
 */
axiosInstance.interceptors.request.use(
  async (config) => {
    const isServer = typeof window === "undefined";

    if (isServer) {
      const cookies = await import("next/headers").then((mod) => mod.cookies);
      const cookieStore = await cookies();
      const cookie = cookieStore.get("litequiz-session");

      if (cookie) {
        config.headers.set("Cookie", `${cookie.name}=${cookie.value}`);
      }
    }

    return config;
  },
  (error) => Promise.reject(error),
);

export { api, route };
