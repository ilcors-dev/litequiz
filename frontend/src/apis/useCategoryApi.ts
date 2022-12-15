const api = {
	get: async (): Promise<Category[]> =>
		(await (await fetch(`/api/categories`)).json()) as Category[],
	show: async (categoryId: number): Promise<Category> =>
		(await (await fetch(`/api/categories/${categoryId}`)).json()) as Category,
};

export const useCategoryApi = () => api;
