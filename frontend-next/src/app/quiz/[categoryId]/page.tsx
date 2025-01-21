import { useCategoryApi } from "@/apis/useCategoryApi";
import { useQuizApi } from "@/apis/useQuizApi";
import Form from "./form";
import { Metadata } from "next";
import { cookies } from "next/headers";

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

  const category = await useCategoryApi().show(+categoryId);

  const questions = await useQuizApi().get(+categoryId);

  if (!category) {
    return <div>Error loading category.</div>;
  }

  if (!questions) {
    return <div>Error loading questions.</div>;
  }

  return (
    <div className="container mx-auto">
      <Form category={category} questions={questions} />
    </div>
  );
}
