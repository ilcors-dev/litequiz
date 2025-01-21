import getSessionCookie from "@/hooks/getSessionCookie";

const base_url = process.env.NEXT_PUBLIC_API_URL;

const api = {
  get: async (categoryId: number): Promise<WithHiddenAnswer[]> => {
    const res = await fetch(`${base_url}/api/quiz/${categoryId}`, {
      credentials: "include",
      headers: {
        cookie: await getSessionCookie(),
      },
    });

    console.log(res);

    return (await res.json()) as WithHiddenAnswer[];
  },
  destroy: async () => {
    await fetch(`${base_url}/api/quiz`, {
      method: "DELETE",
      credentials: "include",
      headers: {
        cookie: await getSessionCookie(),
      },
    });
  },
};

export const useQuizApi = () => api;
