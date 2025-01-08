import classNames from 'classnames';
import { useId, useState } from 'react';
import { Tooltip } from 'react-tooltip';
import 'react-tooltip/dist/react-tooltip.css';

interface Props {
	i: number;
	q: WithHiddenAnswer;
	className: string;
	state?: QuizAnswer[];
	set: (answer: QuizAnswer[]) => void;
}

export const QuizRowMultipleChoice = ({
	q,
	className,
	i,
	state,
	set,
}: Props) => {
	const id = useId();
	const [answer, setAnswer] = useState<number[] | undefined>(
		state
			?.map((a) => a.answer_id)
			.filter((id): id is number => id !== undefined)
	);

	const handleAnswer = (_answer: number[]) => {
		if (_answer === answer) {
			setAnswer(undefined);
			set(state?.filter((a) => a.question_id !== q.id) as QuizAnswer[]);
			return;
		}

		setAnswer(_answer);
		set(
			_answer.map((a) => ({
				question_id: q.id,
				answer_id: a,
			}))
		);
	};

	return (
		<li className={classNames('brutal-border relative py-4', className)}>
			<div className="flex">
				{!q.verified && (
					<>
						<span
							id={`tooltip-${id}`}
							className="absolute top-1 left-1 cursor-pointer rounded"
						>
							⚠️
						</span>
						<Tooltip
							anchorId={`tooltip-${id}`}
							place="bottom"
							content="This question comes from an untrusted source, thus, its answer could not be fully verified - take it with a pinch of salt!"
							style={{
								backgroundColor: 'white',
								color: 'black',
								border: '3px solid black',
								borderRadius: '.5rem',
								opacity: 1,
								caretColor: 'black',
							}}
							noArrow
						/>
					</>
				)}
				<span className="inline-flex items-center justify-center px-6 text-xl font-bold">
					#{i}
				</span>

				<p className="my-auto">{q.question}</p>
			</div>
			<div className={classNames('mt-2 px-6', { flex: !q.is_multiple_choice })}>
				<ul>
					{q.choices.map((a, i) => (
						<li key={i} className="flex items-center space-x-2">
							{a.text}
							<div className="mr-2 ml-auto inline-flex items-center space-x-2 pl-2">
								<button
									className={`h-12 w-12 rounded-lg hover:bg-yellow-300 hover:shadow ${
										answer !== undefined && answer.includes(a.id)
											? 'brutal-btn'
											: 'opacity-30'
									}`}
									onClick={() => handleAnswer(
										answer === undefined
											? [a.id]
											: answer.includes(a.id)
											? answer.filter((id) => id !== a.id)
											: [...answer, a.id]
									)}
								>
									✅
								</button>
							</div>
						</li>
					))}
				</ul>
			</div>
		</li>
	);
};
