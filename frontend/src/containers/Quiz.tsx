import { useEffect, useState } from 'react';

const api = {
	get: async (): Promise<Question[]> =>
		(await (await fetch(`/api/quiz`)).json()) as Question[],
	create: async (todo: string) =>
		await (
			await fetch('/api/quiz', {
				method: 'POST',
				headers: {
					'Content-Type': 'application/json',
				},
				body: JSON.stringify({ text: todo }),
			})
		).json(),
	delete: async (id: number) =>
		await fetch(`/api/quiz/${id}`, { method: 'DELETE' }),
	update: async (id: number, todo: string) =>
		await fetch(`/api/quiz/${id}`, {
			method: 'PUT',
			headers: {
				'Content-Type': 'application/json',
			},
			body: JSON.stringify({ text: todo }),
		}),
};

export const Quiz = () => {
	const [questions, setQuestions] = useState([] as Question[]);

	useEffect(() => {
		(async () => {
			setQuestions(await api.get());
		})();
	}, []);

	return (
		<div className="">
			<ul>
				{questions.map((q) => (
					<li>{q.question}</li>
				))}
			</ul>
		</div>
	);
};
