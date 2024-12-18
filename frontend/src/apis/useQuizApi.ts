const api = {
	get: async (categoryId: number): Promise<WithHiddenAnswer[]> => {
		return (await (
			await fetch(`/api/quiz?category_id=${categoryId}`)
		).json()) as WithHiddenAnswer[];
	},
	destroy: async () => {
		await fetch(`/api/quiz`, {
			method: 'DELETE',
		});
	},
};

export const useQuizApi = () => api;
