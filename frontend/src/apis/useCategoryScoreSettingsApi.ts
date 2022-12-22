const api = {
	get: async (category_id: number) => {
		const response = await fetch(`/api/category-score-settings/${category_id}`);

		return (await response.json()) as Promise<CategoryScoreSetting[]>;
	},
	postMultiple: async (
		category_id: number,
		data: CategoryScoreSettingForm[]
	) => {
		return await fetch(`/api/category-score-settings/${category_id}`, {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json',
			},
			body: JSON.stringify(data),
		});
	},
};

export const useCategoryScoreSettingsApi = () => api;
