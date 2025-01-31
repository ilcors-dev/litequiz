"use client";

import { api } from "@/lib/axios";
import classNames from "classnames";
import { useId } from "react";
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

export const QuizRowMultipleChoice = ({
  q,
  className,
  i,
  state,
  setValue,
}: Props) => {
  const id = useId();

  return (
    <li className={classNames("brutal-border relative py-4", className)}>
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

        <p className="my-auto whitespace-pre-line">{q.question}</p>
      </div>
      <div className={classNames("mt-2 px-6", { flex: !q.is_multiple_choice })}>
        <ul>
          {q.choices.map((a, i) => (
            <li key={i} className="flex items-center space-x-2">
              {a.text}
              <div className="mr-2 ml-auto inline-flex items-center space-x-2 pl-2">
                <button
                  className={`h-12 w-12 rounded-lg hover:bg-yellow-300 hover:shadow ${
                    state !== undefined &&
                    state?.map((a) => a.answer_id).includes(a.id)
                      ? "brutal-btn"
                      : "opacity-30"
                  }`}
                  onClick={() => {
                    const exists =
                      state?.findIndex((ans) => ans.answer_id === a.id) ?? -1;

                    let newState = state as QuizAnswer[];

                    if (exists === -1) {
                      newState = [
                        ...(state?.map((ans) => ({
                          question_id: ans.question_id,
                          answer_id: ans.answer_id,
                        })) ?? []),
                        {
                          question_id: q.id,
                          answer_id: a.id,
                        },
                      ].filter((a) => !!a);
                    } else {
                      newState =
                        state?.filter((ans) => ans.answer_id !== a.id) ?? [];
                    }

                    setValue("answers", newState);
                    api.post("postQuizStatus", newState);
                  }}
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
