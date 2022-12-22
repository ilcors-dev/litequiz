import { useState } from 'react';
import { Helmet } from 'react-helmet';
import { useQuery } from 'react-query';
import { useCategoryApi } from '../apis/useCategoryApi';
import { useQuizStatusApi } from '../apis/useQuizStatusApi';

export const QuizStarter = () => {
	const categories = useQuery('categories', useCategoryApi().get);
	const quizStatus = useQuery('quizStatus', useQuizStatusApi().isActive);

	if (quizStatus.data && quizStatus.data.active && quizStatus.data.category) {
		window.location.href = `${quizStatus.data.category.id}/quiz`;
	}

	const [selected, setSelected] = useState(categories.data?.[0].id ?? 1);

	return (
		<div className="my-20 flex flex-col items-center justify-center">
			<Helmet>
				<title>Start Quiz</title>
			</Helmet>
			<div className="brutal-border inline-flex flex-col items-center space-y-6 p-20">
				<h1 className="text-4xl font-bold">Quiz</h1>
				<p className="text-xl">Click the button to start the quiz</p>
				<a className="brutal-btn" href={`${selected}/quiz`}>
					Start
				</a>
				<div className="flex items-center space-x-4">
					<p>Using questions from</p>
					<select
						name="quiz-category"
						id="quiz-category"
						value={selected}
						onChange={(e) => setSelected(+e.target.value)}
					>
						{categories.data?.map((c) => (
							<option value={c.id} key={c.id}>
								{c.name} ({c.question_count})
							</option>
						))}
					</select>
					<a href={`/category-score-settings/${selected}`}>⚙️</a>
				</div>
			</div>
		</div>
	);
};
