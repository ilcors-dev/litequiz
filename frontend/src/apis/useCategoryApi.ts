const api = {
	get: async (): Promise<CategoryWithQuestionCount[]> =>
		(await (
			await fetch(`/api/categories`)
		).json()) as CategoryWithQuestionCount[],
	show: async (categoryId: number): Promise<Category> =>
		(await (await fetch(`/api/categories/${categoryId}`)).json()) as Category,
};

export const useCategoryApi = () => api;
