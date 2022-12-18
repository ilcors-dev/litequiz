const api = {
	isActive: async (): Promise<QuizStatus> => {
		return await (await fetch('/api/quiz-status/is-active')).json();
	},
	get: async (): Promise<QuizAnswer[]> => {
		return await (await fetch('/api/quiz-status')).json();
	},
	post: async (status: QuizAnswer[]) => {
		await fetch('/api/quiz-status', {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json',
			},
			body: JSON.stringify(status),
		});
	},
	destroy: async () => {
		await fetch(`/api/quiz-status`, {
			method: 'DELETE',
		});
	},
};

export const useQuizStatusApi = () => api;
