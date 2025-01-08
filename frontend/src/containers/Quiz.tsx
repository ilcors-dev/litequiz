import { useEffect, useState } from 'react';
import { Helmet } from 'react-helmet';
import { useMutation, useQuery } from 'react-query';
import { useParams } from 'react-router-dom';
import { useCategoryApi } from '../apis/useCategoryApi';
import { useQuizApi } from '../apis/useQuizApi';
import { useQuizStatusApi } from '../apis/useQuizStatusApi';
import { QuizDestroy } from '../components/QuizDestroy';
import { QuizRow } from '../components/QuizRow';
import { QuizSubmit } from '../components/QuizSubmit';
import { QuizRowMultipleChoice } from '../components/QuizRowMultipleChoice';
import { uniqBy } from 'lodash';

export const Quiz = () => {
	const { categoryId } = useParams();
	const [answers, setAnswers] = useState<QuizAnswer[]>([]);

	if (!categoryId) {
		return null;
	}

	const status = useQuery('status', useQuizStatusApi().get, {
		onSuccess(data) {
			setAnswers(data);
		},
	});
	const saveStatus = useMutation(() =>
		useQuizStatusApi().post(
			answers?.filter(
				(a) => a.answer !== undefined || a.answer_id !== undefined
			) ?? []
		)
	);

	const handleAnswerToggle = (answer: QuizAnswer) => {
		if (answer.answer === null) {
			const newAnswers = answers.filter(
				(a) => a.question_id !== answer.question_id && a.answer_id !== answer.answer_id
			);
			setAnswers(newAnswers);
			return;
		}

		const index = answers.findIndex(
			(a) =>
				a.answer_id === answer.answer_id || a.question_id === answer.question_id
		);

		if (index === -1) {
			setAnswers([...answers, answer]);
		} else {
			const newAnswers = [...answers];
			newAnswers[index] = answer;
			setAnswers(newAnswers);
		}
	};

	useEffect(saveStatus.mutate, [answers]);

	const category = useQuery('category', () =>
		useCategoryApi().show(+categoryId)
	);

	const questions = useQuery('quiz', () => useQuizApi().get(+categoryId));

	return (
		<div className="">
			<Helmet>
				<title>
					Quiz {`${category.data?.name}`} (
					{`${answers?.filter((a) => a.answer !== undefined).length ?? 0}`}/
					{`${questions.data?.length}`})
				</title>
			</Helmet>
			<div className="sticky top-0 z-10 flex items-end space-x-4 bg-white py-4">
				<h1 className="text-4xl font-bold">Quiz {category.data?.name}</h1>
				<QuizDestroy />
				<span className="brutal-btn">
					{Object.keys(uniqBy(answers, (a) => a.question_id)).length}/
					{questions.data?.length}
				</span>
				<QuizSubmit answers={answers} />
			</div>
			<ol className="">
				{questions.data?.map((q, i) =>
					q.is_multiple_choice ? (
						<QuizRowMultipleChoice
							q={q}
							i={i}
							key={i}
							className="my-5"
							state={status.data?.filter((a) => a.question_id === q.id)}
							set={(answers) => answers.forEach((a) => handleAnswerToggle(a))}
						/>
					) : (
						<QuizRow
							q={q}
							i={i}
							key={i}
							className="my-5"
							state={status.data?.find((a) => a.question_id === q.id)}
							set={handleAnswerToggle}
						/>
					)
				)}
			</ol>
		</div>
	);
};
