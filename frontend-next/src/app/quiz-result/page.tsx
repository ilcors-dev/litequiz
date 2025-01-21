import { useQuizSolutionApi } from "@/apis/useQuizSolutionApi";
import { QuizDestroy } from "@/components/QuizDestroy";
import { QuizRowResult } from "@/components/QuizRowResult";
import { QuizRowResultMultipleChoice } from "@/components/QuizRowResultMultipleChoice";
import { uniqBy } from "lodash";

export const metadata = {
  title: "Quiz Result",
};

export default async function Page() {
  const solution = await useQuizSolutionApi().get();

  if (!solution) {
    return <div>Error loading solution.</div>;
  }

  return (
    <div>
      <div className="sticky top-0 z-10 bg-white py-4">
        <div className="flex items-end space-x-4 bg-white py-4">
          <h1 className="text-4xl font-bold">Last quiz results</h1>
          <QuizDestroy btnIcon="🏠" popupMessage="End Quiz?" />
        </div>
        <div className="mt-5 flex justify-between">
          <span className="col-span-4">Total questions answered</span>
          <span className="col-span-8 text-xl font-semibold">
            {uniqBy(solution.given_answers, (a) => a.question_id).length}/
            {solution.total_questions}
          </span>
        </div>
        <div className="flex justify-between">
          <span className="col-span-4">Correct answers</span>
          <span className="col-span-8 text-xl font-semibold">
            <span>
              {solution.correct_answers_count ?? 0}/{solution.total_questions}
            </span>
            <span>
              &nbsp;(
              {(Number(solution.correct_answers_percentage) ?? 0).toFixed(2)}
              %)
            </span>
          </span>
        </div>
        <div className="flex justify-between">
          <span className="col-span-4">Final score</span>
          <span className="col-span-8 text-xl font-semibold">
            <span>
              {solution.score}/{solution.max_score}
            </span>
          </span>
        </div>
      </div>
      <div>
        <ol className="mt-10">
          {solution.questions.map((q, i) =>
            q.is_multiple_choice ? (
              <QuizRowResultMultipleChoice
                q={q}
                i={i}
                key={i}
                choices={solution.choices.filter((a) => a.question_id === q.id)}
                className="my-5"
                givenAnswers={solution.given_answers
                  .filter((a) => a.question_id === q.id)
                  .map((a) => a.answer_id!)}
                correctAnswers={solution.multiple_choice_solutions
                  .filter((s) => s.question_id === q.id)
                  .map((a) => a.id)}
              />
            ) : (
              <QuizRowResult
                q={q}
                i={i}
                key={i}
                className="my-5"
                givenAnswer={
                  solution.given_answers.find((a) => a.question_id === q.id)
                    ?.answer
                }
                correctAnswer={q.answer}
              />
            ),
          )}
        </ol>
      </div>
    </div>
  );
}
