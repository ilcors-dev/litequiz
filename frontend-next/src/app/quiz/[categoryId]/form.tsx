"use client";

import { QuizDestroy } from "@/components/QuizDestroy";
import { QuizRow } from "@/components/QuizRow";
import { QuizRowMultipleChoice } from "@/components/QuizRowMultipleChoice";
import { QuizSubmit } from "@/components/QuizSubmit";
import { uniqBy } from "lodash";
import { useForm } from "react-hook-form";

interface Props {
  category: Categories;
  questions: WithHiddenAnswer[];
  currentAnswers: QuizAnswer[];
}

export default function Form({ category, questions, currentAnswers }: Props) {
  const form = useForm({
    defaultValues: {
      answers: currentAnswers,
    },
  });

  return (
    <>
      <div className="sticky top-0 z-10 flex items-end space-x-4 bg-white py-4">
        <h1 className="text-4xl font-bold">Quiz {category.name}</h1>
        <QuizDestroy />
        <span className="brutal-btn">
          {
            Object.keys(uniqBy(form.watch("answers"), (a) => a.question_id))
              .length
          }
          /{questions.length}
        </span>
        <QuizSubmit />
      </div>
      <ol className="">
        {questions?.map((q, i) =>
          q.is_multiple_choice ? (
            <QuizRowMultipleChoice
              q={q}
              i={i}
              key={i}
              className="my-5"
              state={form.watch("answers")}
              setValue={form.setValue}
            />
          ) : (
            <QuizRow
              q={q}
              i={i}
              key={i}
              className="my-5"
              state={form.watch("answers")}
              setValue={form.setValue}
            />
          ),
        )}
      </ol>
    </>
  );
}
