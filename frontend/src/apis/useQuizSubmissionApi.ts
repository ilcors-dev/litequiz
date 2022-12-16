const api = {
	get: async (): Promise<QuizSubmission> => {
		return (await (
			await fetch(`/api/quiz-submission`)
		).json()) as QuizSubmission;
	},
	post: async (answers: QuizAnswer[]): Promise<boolean> => {
		return await (
			await fetch(`/api/quiz-submission`, {
				method: 'POST',
				headers: {
					'Content-Type': 'application/json',
				},
				body: JSON.stringify(answers),
			})
		).json();
	},
};

export const useQuizSubmissionApi = () => api;
