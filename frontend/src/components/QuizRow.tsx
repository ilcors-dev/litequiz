import { useState } from 'react';

interface Props {
	i: number;
	q: WithHiddenAnswer;
	className: string;
}

export const QuizRow = ({ q, className, i }: Props) => {
	const [answer, setAnswer] = useState<boolean | null>(null);

	return (
		<li className={`brutal-border flex py-4 ${className}`}>
			<span className="inline-flex items-center justify-center px-6 text-xl font-bold">
				#{i}
			</span>
			<p>{q.question}</p>
			<div className="ml-auto inline-flex space-x-8 px-6">
				<button
					className={`${answer !== null && answer ? '' : 'opacity-30'}`}
					onClick={() => setAnswer(true)}
				>
					✅
				</button>
				<button
					className={`${answer !== null && !answer ? '' : 'opacity-30'}`}
					onClick={() => setAnswer(false)}
				>
					⭕
				</button>
			</div>
		</li>
	);
};
