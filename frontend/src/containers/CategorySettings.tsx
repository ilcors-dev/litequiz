import { FormEvent } from 'react';
import { Helmet } from 'react-helmet';
import { useQuery } from 'react-query';
import { useParams } from 'react-router-dom';
import { useCategoryApi } from '../apis/useCategoryApi';
import { useCategoryScoreSettingsApi } from '../apis/useCategoryScoreSettingsApi';

export const CategorySettings = () => {
	const { categoryId } = useParams();

	if (!categoryId) {
		return null;
	}

	const settings = useQuery(['category'], () =>
		useCategoryScoreSettingsApi().get(+categoryId)
	);

	const category = useQuery(['category', categoryId], () =>
		useCategoryApi().show(+categoryId)
	);

	const handle = async (e: FormEvent) => {
		e.preventDefault();

		const form = e.target as HTMLFormElement;

		const correctAnswer = form['correct-answer'].value;
		const incorrectAnswer = form['incorrect-answer'].value;
		const emptyAnswer = form['empty-answer'].value;

		const data: CategoryScoreSettingForm[] = [
			{
				category_id: +categoryId,
				answer_type: 'correct',
				score: +correctAnswer,
			},
			{
				category_id: +categoryId,
				answer_type: 'wrong',
				score: +incorrectAnswer,
			},
			{
				category_id: +categoryId,
				answer_type: 'empty',
				score: +emptyAnswer,
			},
		];

		await useCategoryScoreSettingsApi().postMultiple(+categoryId, data);
	};

	return (
		<div>
			<Helmet>
				<title>{`${category.data?.name}`} settings</title>
			</Helmet>
			<div className="sticky top-0 z-10 flex items-end space-x-4 bg-white py-4">
				<h1 className="text-4xl font-bold capitalize">
					{category.data?.name} settings
				</h1>
			</div>
			<div>
				<h2 className="text-2xl font-semibold">Score</h2>
				<form className="mt-4" onSubmit={handle}>
					<div className="flex flex-col space-y-4">
						<div className="flex items-center space-x-4">
							<label htmlFor="correct-answer">Correct answer</label>
							<input
								type="number"
								className="brutal-border p-1"
								name="correct-answer"
								id="correct-answer"
								step={0.01}
								defaultValue={
									settings.data?.find((s) => s.answer_type === 'correct')?.score
								}
							/>
						</div>
						<div className="flex items-center space-x-4">
							<label htmlFor="incorrect-answer">Incorrect answer</label>
							<input
								type="number"
								name="incorrect-answer"
								className="brutal-border p-1"
								id="incorrect-answer"
								step={0.01}
								defaultValue={
									settings.data?.find((s) => s.answer_type === 'wrong')?.score
								}
							/>
						</div>
						<div className="flex items-center space-x-4">
							<label htmlFor="empty-answer">Empty answer</label>
							<input
								type="number"
								className="brutal-border p-1"
								name="empty-answer"
								id="empty-answer"
								step={0.01}
								defaultValue={
									settings.data?.find((s) => s.answer_type === 'empty')?.score
								}
							/>
						</div>
						<button className="brutal-btn w-max">Save</button>
					</div>
				</form>
			</div>
		</div>
	);
};
