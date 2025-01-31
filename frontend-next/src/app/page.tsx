import QuizCategorySelect from "@/components/QuizCategorySelect";
import SessionStarter from "@/components/SessionStarter";
import { api } from "@/lib/axios";
import { redirect } from "next/navigation";

export default async function Page() {
  const categories = await api.get("getCategories");

  if (categories.status !== 200) {
    return <div>Failed to fetch categories</div>;
  }

  const quizStatus = await api.get("isQuizActive");

  if (quizStatus.status !== 200) {
    return <div>Failed to fetch quiz status</div>;
  }

  if (quizStatus && quizStatus.data.active && quizStatus.data.category) {
    const isServer = typeof window === "undefined";

    if (isServer) {
      redirect(`${quizStatus.data.category.id}/quiz`);
    } else {
      window.location.href = `${quizStatus.data.category.id}/quiz`;
    }
  }

  return (
    <div className="my-20 flex flex-col items-center justify-center">
      <div className="brutal-border inline-flex flex-col items-center space-y-6 p-20">
        <h1 className="text-4xl font-bold">Quiz</h1>
        <p className="text-xl">Click the button to start the quiz</p>
        <QuizCategorySelect categories={categories.data} />
        <SessionStarter />
      </div>
    </div>
  );
}
