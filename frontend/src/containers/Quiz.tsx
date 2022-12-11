import { useEffect, useState } from 'react';
import { QuizRow } from '../components/QuizRow';

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
			<ol className="">
				{questions.map((q, i) => (
					<QuizRow q={q} i={i} className="my-5" />
				))}
			</ol>
		</div>
	);
};
