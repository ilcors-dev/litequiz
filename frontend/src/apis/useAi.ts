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
					"INSTRUCTIONS:\
- Given this question with its answer(s) (both correct and incorrect) explain why the answer(s) is/are correct in a coincise way.\
- Include the theory behind the correct answer.\
- Explain first the correct answers, the explain why the other are false.\
- Be concise and clear, important! Avoid wall of texts too lengthy to read.\
STYLE GUIDE:\
- Use markdown syntax and lists to explain the concepts.\
- Use font styles\
- Do not use headers as it should be included in a written paragraph.\
- Use also latex where appropriate for math formulas when needed.\
\n\nHere's the question+answers (the correct ones are passed in the corresponding property):\n" +
					text,
				stream: false,
			}),
		});
	},
};

export const useAi = () => api;
