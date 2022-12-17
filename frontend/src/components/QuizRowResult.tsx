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
	const style = (config: { shouldBe: boolean }) => {
		// not answered
		if (givenAnswer === undefined || givenAnswer === null) {
			if (correctAnswer === config.shouldBe) {
				return 'bg-gray-300 brutal-btn';
			}
		}

		// correct answer
		if (givenAnswer === config.shouldBe && correctAnswer === config.shouldBe) {
			return 'brutal-btn bg-green-300';
		}

		// wrong answer
		if (correctAnswer !== config.shouldBe && givenAnswer === config.shouldBe) {
			return 'brutal-btn bg-red-300';
		}
	};

	return (
		<li className={`brutal-border flex py-4 ${className}`}>
			<span className="inline-flex items-center justify-center px-6 text-xl font-bold">
				#{i}
			</span>
			<p className="my-auto">{q.question}</p>
			<div className="mr-2 ml-auto inline-flex items-center space-x-2 pl-2">
				<button
					className={`h-12 w-12 rounded-lg hover:bg-yellow-300 hover:shadow ${style(
						{ shouldBe: true }
					)}`}
				>
					✅
				</button>
				<button
					className={`h-12 w-12 rounded-lg hover:bg-yellow-300 hover:shadow ${style(
						{ shouldBe: false }
					)}`}
				>
					⭕
				</button>
			</div>
		</li>
	);
};
