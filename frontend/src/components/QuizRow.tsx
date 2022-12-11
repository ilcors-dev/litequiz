import { useState } from 'react';

interface Props {
	i: number;
	q: WithHiddenAnswer;
	className: string;
}

export const QuizRow = ({ q, className, i }: Props) => {
	const [answer, setAnswer] = useState<boolean | null>(null);

	return (
		<li
			className={`py-4 flex border-[3px] border-black rounded-lg ${className}`}
		>
			<span className="font-bold px-6 inline-flex items-center justify-center text-xl">
				{i}
			</span>
			<p className="">{q.question}</p>
			<div className="inline-flex space-x-8 px-6 ml-auto">
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
