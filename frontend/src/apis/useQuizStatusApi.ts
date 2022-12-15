const api = {
	isActive: async (): Promise<QuizStatus> => {
		return await (await fetch('/api/quiz-status')).json();
	},
};

export const useQuizStatusApi = () => api;
