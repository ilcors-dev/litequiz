const base_url = process.env.NEXT_PUBLIC_API_URL;

const api = {
  isActive: async (): Promise<QuizStatus> => {
    const res = await fetch(`${base_url}/api/quiz-status/is-active`, {
      credentials: "include",
    });

    return await res.json();
  },
  get: async (): Promise<QuizAnswer[]> => {
    const res = await fetch(`${base_url}/api/quiz-status`, {
      credentials: "include",
    });

    return await res.json();
  },
  post: async (status: QuizAnswer[]) => {
    await fetch(`${base_url}/api/quiz-status`, {
      method: "POST",
      credentials: "include",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(status),
    });
  },
  destroy: async () => {
    await fetch(`${base_url}/api/quiz-status`, {
      method: "DELETE",
      credentials: "include",
    });
  },
};

export const useQuizStatusApi = () => api;
