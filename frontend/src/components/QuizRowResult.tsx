import { useState } from 'react';

interface Props {
	i: number;
	q: WithHiddenAnswer;
	className: string;
	givenAnswer?: boolean;
	correctAnswer?: boolean;
}

export const QuizRowResult = ({
	q,
	className,
	i,
	givenAnswer,
	correctAnswer,
}: Props) => {
	return (
		<li className={`brutal-border flex py-4 ${className}`}>
			<span className="inline-flex items-center justify-center px-6 text-xl font-bold">
				#{i}
			</span>
			<p className="my-auto">{q.question}</p>
			<div className="mr-2 ml-auto inline-flex items-center space-x-2 pl-2">
				<button
					className={`h-12 w-12 rounded-lg hover:bg-yellow-300 hover:shadow ${
						givenAnswer !== undefined && givenAnswer === correctAnswer
							? 'brutal-btn bg-green-300'
							: 'brutal-btn bg-red-300'
					}`}
				>
					✅
				</button>
				<button
					className={`h-12 w-12 rounded-lg hover:bg-yellow-300 hover:shadow ${
						givenAnswer !== undefined && givenAnswer === correctAnswer
							? 'brutal-btn bg-green-300'
							: 'brutal-btn bg-red-300'
					}`}
				>
					⭕
				</button>
			</div>
		</li>
	);
};
