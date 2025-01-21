import QuizCategorySelect from "@/components/QuizCategorySelect";
import { useCategoryApi } from "../apis/useCategoryApi";
import { useQuizStatusApi } from "../apis/useQuizStatusApi";
import SessionStarter from "@/components/SessionStarter";

export default async function Page() {
  const categories = await useCategoryApi().get();
  const quizStatus = await useQuizStatusApi().isActive();

  if (quizStatus && quizStatus.active && quizStatus.category) {
    window.location.href = `${quizStatus.category.id}/quiz`;
  }

  return (
    <div className="my-20 flex flex-col items-center justify-center">
      <div className="brutal-border inline-flex flex-col items-center space-y-6 p-20">
        <h1 className="text-4xl font-bold">Quiz</h1>
        <p className="text-xl">Click the button to start the quiz</p>
        <QuizCategorySelect categories={categories} />
        <SessionStarter />
      </div>
    </div>
  );
}
