import { useQuery } from 'react-query';
import { useQuizApi } from '../apis/useQuizApi';
import { useQuizSubmissionApi } from '../apis/useQuizSubmissionApi';
import { QuizRowResult } from '../components/QuizRowResult';

export const QuizResult = () => {
	const submission = useQuery('submission', useQuizSubmissionApi().get);
	// const questions = useQuery({
	// 	queryKey: ['questions', submission.data?.category_id],
	// 	queryFn: () => useQuizApi().get(submission.data?.category_id ?? 0),
	// 	enabled: !!submission.data?.category_id,
	// });

	return (
		<div>
			<div className="sticky top-0 z-10 flex items-end space-x-4 bg-white py-4">
				<h1 className="text-4xl font-bold">Risultati ultimo quiz</h1>
			</div>
			<div>
				<div className="flex justify-between">
					<span className="col-span-4">Hai risposto a</span>
					<span className="col-span-8 text-xl font-semibold">
						{submission.data?.given_answers.length}/
						{submission.data?.total_questions}
					</span>
				</div>
				<div className="flex justify-between">
					<span className="col-span-4">Risposte corrette</span>
					<span className="col-span-8 text-xl font-semibold">
						<span>
							{submission.data?.correct_answers_count}/
							{submission.data?.total_questions}
						</span>
						<span>&nbsp;({submission.data?.correct_answers_percentage}%)</span>
					</span>
				</div>
				<ol className="mt-20">
					{submission.data?.questions.map((q, i) => (
						<QuizRowResult
							q={q}
							i={i}
							key={i}
							className="my-5"
							givenAnswer={
								submission.data?.given_answers.find(
									(a) => a.question_id === q.id
								)?.answer
							}
							correctAnswer={q.answer}
						/>
					))}
				</ol>
			</div>
		</div>
	);
};
