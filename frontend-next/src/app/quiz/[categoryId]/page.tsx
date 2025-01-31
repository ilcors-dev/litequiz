import Form from "./form";
import { Metadata } from "next";
import { api } from "@/lib/axios";

export const metadata: Metadata = {
  title: "Quiz",
};

export default async function Page({
  params,
}: {
  params: Promise<{ categoryId: string }>;
}) {
  const categoryId = (await params).categoryId;

  if (!categoryId) {
    return null;
  }

  const category = await api
    .get("showCategory", { categoryId: +categoryId })
    .then((res) => res.data);

  const questions = await api
    .get("getQuiz", { categoryId: +categoryId })
    .then((res) => res.data);

  const currentAnswers = await api.get("getQuizStatus").then((res) => res.data);

  if (!category) {
    return <div>Error loading category.</div>;
  }

  if (!questions) {
    return <div>Error loading questions.</div>;
  }

  return (
    <div className="container mx-auto">
      <Form
        category={category}
        questions={questions}
        currentAnswers={currentAnswers}
      />
    </div>
  );
}
