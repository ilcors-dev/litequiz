"use client";

import { useQuizStatusApi } from "@/apis/useQuizStatusApi";
import { QuizDestroy } from "@/components/QuizDestroy";
import { QuizRow } from "@/components/QuizRow";
import { QuizRowMultipleChoice } from "@/components/QuizRowMultipleChoice";
import { QuizSubmit } from "@/components/QuizSubmit";
import { uniqBy } from "lodash";
import { useEffect } from "react";
import { useForm } from "react-hook-form";

interface Props {
  category: Categories;
  questions: WithHiddenAnswer[];
}

export default function Form({ category, questions }: Props) {
  const form = useForm({
    defaultValues: {
      answers: [] as QuizAnswer[],
    },
  });

  useEffect(() => {
    useQuizStatusApi()
      .get()
      .then((data) => form.setValue("answers", data));
  }, []);

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
        <QuizSubmit answers={form.watch("answers")} />
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
