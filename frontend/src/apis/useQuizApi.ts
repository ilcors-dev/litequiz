const api = {
	get: async (categoryId: number): Promise<Question[]> => {
		return (await (
			await fetch(`/api/quiz?category_id=${categoryId}`)
		).json()) as Question[];
	},
	destroy: async () => {
		await fetch(`/api/quiz`, {
			method: 'DELETE',
		});
	},
};

export const useQuizApi = () => api;
