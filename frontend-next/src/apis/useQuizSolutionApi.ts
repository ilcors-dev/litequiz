import getSessionCookie from "@/hooks/getSessionCookie";

const base_url = process.env.NEXT_PUBLIC_API_URL;

const api = {
  get: async (): Promise<QuizSolution> => {
    const res = await fetch(`${base_url}/api/quiz-solution`, {
      credentials: "include",
      headers: {
        cookie: await getSessionCookie(),
      },
    });

    return (await res.json()) as QuizSolution;
  },
};

export const useQuizSolutionApi = () => api;
