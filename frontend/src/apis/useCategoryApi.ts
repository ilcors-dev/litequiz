const api = {
	get: async (): Promise<CategoryWithQuestionCount[]> =>
		(await (
			await fetch(`/api/categories`)
		).json()) as CategoryWithQuestionCount[],
	show: async (categoryId: number): Promise<Category> =>
		(await (await fetch(`/api/categories/${categoryId}`)).json()) as Category,
	update: async (categoryId: number, data: CategoryForm): Promise<void> => {
		await fetch(`/api/categories/${categoryId}`, {
			method: 'PUT',
			headers: {
				'Content-Type': 'application/json',
			},
			body: JSON.stringify(data),
		});
	},
};

export const useCategoryApi = () => api;
