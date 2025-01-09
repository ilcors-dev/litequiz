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
import { useForm } from 'react-hook-form';

export const Quiz = () => {
	const { categoryId } = useParams();
	const form = useForm({
		defaultValues: {
			answers: [] as QuizAnswer[],
		},
	});

	if (!categoryId) {
		return null;
	}

	const category = useQuery('category', () =>
		useCategoryApi().show(+categoryId)
	);

	const questions = useQuery('quiz', () => useQuizApi().get(+categoryId));

	useEffect(() => {
		useQuizStatusApi()
			.get()
			.then((data) => form.setValue('answers', data));
	}, []);

	return (
		<div className="">
			<Helmet>
				<title>
					Quiz {`${category.data?.name}`} (
					{`${
						form.watch('answers')?.filter((a) => a.answer !== undefined)
							.length ?? 0
					}`}
					/{`${questions.data?.length}`})
				</title>
			</Helmet>
			<div className="sticky top-0 z-10 flex items-end space-x-4 bg-white py-4">
				<h1 className="text-4xl font-bold">Quiz {category.data?.name}</h1>
				<QuizDestroy />
				<span className="brutal-btn">
					{
						Object.keys(uniqBy(form.watch('answers'), (a) => a.question_id))
							.length
					}
					/{questions.data?.length}
				</span>
				<QuizSubmit answers={form.watch('answers')} />
			</div>
			<ol className="">
				{questions.data?.map((q, i) =>
					q.is_multiple_choice ? (
						<QuizRowMultipleChoice
							q={q}
							i={i}
							key={i}
							className="my-5"
							state={form.watch('answers')}
							setValue={form.setValue}
						/>
					) : (
						<QuizRow
							q={q}
							i={i}
							key={i}
							className="my-5"
							state={form.watch('answers')}
							setValue={form.setValue}
						/>
					)
				)}
			</ol>
		</div>
	);
};
