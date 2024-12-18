import classNames from 'classnames';
import { useState } from 'react';

interface Props {
	i: number;
	q: Question;
	choices: Answer[];
	className: string;
	givenAnswer?: number;
	correctAnswer?: number;
}

export const QuizRowResultMultipleChoice = ({
	q,
	className,
	choices,
	i,
	givenAnswer,
	correctAnswer,
}: Props) => {
	return (
		<li className={classNames('brutal-border relative py-4', className)}>
			<div className="flex">
				<span className="inline-flex items-center justify-center px-6 text-xl font-bold">
					#{i}
				</span>
				<p className="my-auto">{q.question}</p>
			</div>
			<div className={classNames('mt-2 px-6')}>
				<ul>
					{choices.map((a, i) => (
						<li key={i} className="flex items-center space-x-2">
							{a.text}
							<div className="mr-2 ml-auto inline-flex items-center space-x-2 pl-2">
								{a.is_correct ? (
									<button
										className={classNames(
											`h-12 w-12 rounded-lg hover:bg-yellow-300 hover:shadow`,
											{
												'brutal-btn bg-green-300': a.id === correctAnswer,
											}
										)}
									>
										✅
									</button>
								) : (
									<button
										className={classNames(
											`h-12 w-12 rounded-lg hover:bg-yellow-300 hover:shadow`,
											{
												'brutal-btn bg-red-300': a.id === givenAnswer,
											}
										)}
									>
										⭕
									</button>
								)}
							</div>
						</li>
					))}
				</ul>
			</div>
		</li>
	);
};
