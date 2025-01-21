import getSessionCookie from "@/hooks/getSessionCookie";

const base_url = process.env.NEXT_PUBLIC_API_URL;

const api = {
  get: async (): Promise<CategoryWithQuestionCount[]> => {
    const res = await fetch(`${base_url}/api/categories`, {
      credentials: "include",
      headers: { cookie: await getSessionCookie() },
    });

    return (await res.json()) as CategoryWithQuestionCount[];
  },
  show: async (categoryId: number): Promise<Categories> => {
    const res = await fetch(`${base_url}/api/categories/${categoryId}`, {
      credentials: "include",
      headers: { cookie: await getSessionCookie() },
    });

    return (await res.json()) as Categories;
  },
  update: async (categoryId: number, data: UpdateCategories): Promise<void> => {
    await fetch(`${base_url}/api/categories/${categoryId}`, {
      method: "PUT",
      credentials: "include",
      headers: {
        "Content-Type": "application/json",
        cookie: await getSessionCookie(),
      },
      body: JSON.stringify(data),
    });
  },
};

export const useCategoryApi = () => api;
