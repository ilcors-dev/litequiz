"use client";

import { useId, useState } from "react";
import { UseFormSetValue } from "react-hook-form";
import { Tooltip } from "react-tooltip";
import "react-tooltip/dist/react-tooltip.css";

interface Props {
  i: number;
  q: WithHiddenAnswer;
  className: string;
  state?: QuizAnswer[];
  setValue: UseFormSetValue<{ answers: QuizAnswer[] }>;
}

export const QuizRow = ({ q, className, i, state, setValue }: Props) => {
  const id = useId();

  const handleAnswer = (_answer: boolean) => {
    let newState = state ?? [];

    const exists = newState?.find(
      (a) => a.question_id === q.id && a.answer === _answer,
    );

    if (exists) {
      newState = newState?.filter((a) => a.question_id !== q.id);
    } else {
      newState = [...(newState ?? []), { question_id: q.id, answer: _answer }];
    }

    setValue("answers", newState);
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
              backgroundColor: "white",
              color: "black",
              border: "3px solid black",
              borderRadius: ".5rem",
              opacity: 1,
              caretColor: "black",
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
          className={`h-12 w-12 rounded-lg hover:bg-yellow-300 hover:shadow ${
            state !== undefined &&
            state.find((s) => s.question_id === q.id)?.answer === true
              ? "brutal-btn"
              : "opacity-30"
          }`}
          onClick={() => handleAnswer(true)}
        >
          ✅
        </button>
        <button
          className={`h-12 w-12 rounded-lg hover:bg-yellow-300 hover:shadow ${
            state !== undefined &&
            state.find((s) => s.question_id === q.id)?.answer === false
              ? "brutal-btn"
              : "opacity-30"
          }`}
          onClick={() => handleAnswer(false)}
        >
          ⭕
        </button>
      </div>
    </li>
  );
};
