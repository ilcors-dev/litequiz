import { useId, useState } from 'react';
import { Tooltip } from 'react-tooltip';
import 'react-tooltip/dist/react-tooltip.css';

interface Props {
  i: number;
  q: WithHiddenAnswer;
  className: string;
  state?: QuizAnswer;
  set: (answer: QuizAnswer) => void;
}

export const QuizRow = ({ q, className, i, state, set }: Props) => {
  const id = useId();
  const [answer, setAnswer] = useState<boolean | undefined>(state?.answer);

  const handleAnswer = (_answer: boolean) => {
    if (_answer === answer) {
      setAnswer(undefined);
      set({ question_id: q.id, answer: undefined });
      return;
    }

    setAnswer(_answer);
    set({ question_id: q.id, answer: _answer });
  };

  return (
    <li className={`brutal-border flex py-4 ${className} relative`}>
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
      <div className="mr-2 ml-auto inline-flex items-center space-x-2 pl-2">
        <button
          className={`h-12 w-12 rounded-lg hover:bg-yellow-300 hover:shadow ${answer !== undefined && answer ? 'brutal-btn' : 'opacity-30'
            }`}
          onClick={() => handleAnswer(true)}
        >
          ✅
        </button>
        <button
          className={`h-12 w-12 rounded-lg hover:bg-yellow-300 hover:shadow ${answer !== undefined && !answer ? 'brutal-btn' : 'opacity-30'
            }`}
          onClick={() => handleAnswer(false)}
        >
          ⭕
        </button>
      </div>
    </li>
  );
};
