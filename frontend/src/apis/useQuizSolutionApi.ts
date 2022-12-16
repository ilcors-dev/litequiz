const api = {
	get: async (): Promise<QuizSolution> => {
		return (await (await fetch(`/api/quiz-solution`)).json()) as QuizSolution;
	},
};

export const useQuizSolutionApi = () => api;
