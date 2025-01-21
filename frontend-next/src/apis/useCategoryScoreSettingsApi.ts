import getSessionCookie from "@/hooks/getSessionCookie";

const base_url = process.env.NEXT_PUBLIC_API_URL;

const api = {
  get: async (category_id: number) => {
    const response = await fetch(
      `${base_url}/api/category-score-settings/${category_id}`,
      {
        credentials: "include",
        headers: {
          cookie: await getSessionCookie(),
        },
      },
    );

    return (await response.json()) as Promise<CategoryScoreSettings[]>;
  },
  postMultiple: async (category_id: number, data: CategoryScoreSettings[]) => {
    return await fetch(
      `${base_url}/api/category-score-settings/${category_id}`,
      {
        method: "POST",
        credentials: "include",
        headers: {
          "Content-Type": "application/json",
          cookie: await getSessionCookie(),
        },
        body: JSON.stringify(data),
      },
    );
  },
};

export const useCategoryScoreSettingsApi = () => api;
