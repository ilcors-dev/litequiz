import { api } from "@/lib/axios";
import { redirect } from "next/navigation";
import QuestionsForm from "./QuestionsForm";
import ScoresForm from "./ScoresForm";

export default async function Page({
  params,
}: {
  params: Promise<{ categoryId: string }>;
}) {
  const { categoryId } = await params;

  if (!categoryId) {
    return redirect("404");
  }

  const settings = await api
    .get("getCategoryScoreSettings", {
      category_id: +categoryId,
    })
    .then((res) => res.data)
    .catch(() => null);

  if (!settings) {
    return redirect("404");
  }

  const category = await api
    .get("showCategory", { categoryId: +categoryId })
    .then((res) => res.data)
    .catch(() => null);

  if (!category) {
    return redirect("404");
  }

  return (
    <div className="container mx-auto space-y-8">
      <section className="sticky top-0 z-10 my-10 flex items-end space-x-4 bg-white">
        <h1 className="text-4xl font-bold capitalize">
          {category.name} settings
        </h1>
      </section>
      <section>
        <h2 className="text-2xl font-semibold">General</h2>
        <QuestionsForm category={category} />
      </section>
      <section>
        <h2 className="text-2xl font-semibold">Scores</h2>
        <ScoresForm settings={settings} />
      </section>
    </div>
  );
}
