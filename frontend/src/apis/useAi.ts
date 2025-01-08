const API = 'http://localhost:11434/api/generate';

export interface OllamaNoStreamResponse {
	model: string;
	created_at: string;
	response: string;
	done: boolean;
}

const api = {
	explainAnswer: async (text: string) => {
		return await fetch(API, {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json',
			},
			body: JSON.stringify({
				model: 'llama3.2',
				prompt:
					"Given this question with its answer(s) (both correct and incorrect), explain why the answer(s) is/are correct in a coincise way using markdown syntax (use lists, font styles, do not use headers as it should be included in a written paragraph). Also briefly explain why the other answers are incorrect..\n\nHere's the question+answers (the correct ones are passed in the corresponding property):\n" +
					text,
				stream: false,
			}),
		});
	},
};

export const useAi = () => api;
