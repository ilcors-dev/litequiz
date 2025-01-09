import { Helmet } from 'react-helmet';
import { useQuery } from 'react-query';
import { useQuizSolutionApi } from '../apis/useQuizSolutionApi';
import { QuizDestroy } from '../components/QuizDestroy';
import { QuizRowResult } from '../components/QuizRowResult';
import { QuizRowResultMultipleChoice } from '../components/QuizRowResultMultipleChoice';
import { uniqBy } from 'lodash';

export const QuizResult = () => {
	const solution = useQuery('solution', useQuizSolutionApi().get);

	return (
		<div>
			<Helmet>
				<title>Quiz Results</title>
			</Helmet>
			<div className="sticky top-0 z-10 bg-white py-4">
				<div className="flex items-end space-x-4 bg-white py-4">
					<h1 className="text-4xl font-bold">Last quiz results</h1>
					<QuizDestroy btnIcon="🏠" popupMessage="End Quiz?" />
				</div>
				<div className="mt-5 flex justify-between">
					<span className="col-span-4">Total questions answered</span>
					<span className="col-span-8 text-xl font-semibold">
						{uniqBy(solution.data?.given_answers, (a) => a.question_id).length}/
						{solution.data?.total_questions}
					</span>
				</div>
				<div className="flex justify-between">
					<span className="col-span-4">Correct answers</span>
					<span className="col-span-8 text-xl font-semibold">
						<span>
							{Number(solution.data?.correct_answers_count ?? 0).toFixed(2)}/
							{solution.data?.total_questions}
						</span>
						<span>
							&nbsp;(
							{(Number(solution.data?.correct_answers_percentage) ?? 0).toFixed(
								2
							)}
							%)
						</span>
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
					{solution.data?.questions.map((q, i) =>
						q.is_multiple_choice ? (
							<QuizRowResultMultipleChoice
								q={q}
								i={i}
								key={i}
								choices={solution.data.choices.filter(
									(a) => a.question_id === q.id
								)}
								className="my-5"
								givenAnswers={solution.data?.given_answers
									.filter((a) => a.question_id === q.id)
									.map((a) => a.answer_id!)}
								correctAnswers={solution.data.multiple_choice_solutions
									.filter((s) => s.question_id === q.id)
									.map((a) => a.id)}
							/>
						) : (
							<QuizRowResult
								q={q}
								i={i}
								key={i}
								className="my-5"
								givenAnswer={
									solution.data?.given_answers.find(
										(a) => a.question_id === q.id
									)?.answer
								}
								correctAnswer={q.answer}
							/>
						)
					)}
				</ol>
			</div>
		</div>
	);
};
