import { useQuery } from 'react-query';
import { useQuizSolutionApi } from '../apis/useQuizSolutionApi';
import { QuizDestroy } from '../components/QuizDestroy';
import { QuizRowResult } from '../components/QuizRowResult';

export const QuizResult = () => {
	const solution = useQuery('solution', useQuizSolutionApi().get);

	return (
		<div>
			<div className="sticky top-0 z-10 bg-white py-4">
				<div className="flex items-end space-x-4 bg-white py-4">
					<h1 className="text-4xl font-bold">Last quiz results</h1>
					<QuizDestroy btnIcon="🏠" popupMessage="End Quiz?" />
				</div>
				<div className="mt-5 flex justify-between">
					<span className="col-span-4">Total questions answered</span>
					<span className="col-span-8 text-xl font-semibold">
						{solution.data?.given_answers.length}/
						{solution.data?.total_questions}
					</span>
				</div>
				<div className="flex justify-between">
					<span className="col-span-4">Correct answers</span>
					<span className="col-span-8 text-xl font-semibold">
						<span>
							{solution.data?.correct_answers_count}/
							{solution.data?.total_questions}
						</span>
						<span>&nbsp;({solution.data?.correct_answers_percentage}%)</span>
					</span>
				</div>
				<div className="flex justify-between">
					<span className="col-span-4">Final score</span>
					<span className="col-span-8 text-xl font-semibold">
						<span>
							{solution.data?.score}/{solution.data?.max_score}
						</span>
					</span>
				</div>
			</div>
			<div>
				<ol className="mt-10">
					{solution.data?.questions.map((q, i) => (
						<QuizRowResult
							q={q}
							i={i}
							key={i}
							className="my-5"
							givenAnswer={
								solution.data?.given_answers.find((a) => a.question_id === q.id)
									?.answer
							}
							correctAnswer={q.answer}
						/>
					))}
				</ol>
			</div>
		</div>
	);
};
