"use client";

import { useState } from "react";

interface Props {
  categories: CategoryWithQuestionCount[];
}

export default function QuizCategorySelect({ categories }: Props) {
  const [selected, setSelected] = useState<string | null>("1");

  return (
    <div className="flex flex-col gap-y-6">
      <div className="flex items-center space-x-4">
        <p>Using questions from</p>
        <select
          name="quiz-category"
          id="quiz-category"
          value={selected?.toString()}
          onChange={(e) => setSelected(e.target.value)}
        >
          {categories.map((c) => (
            <option value={c.id} key={c.id}>
              {c.name} ({c.question_count})
            </option>
          ))}
        </select>
        <a href={`/category-score-settings/${selected}`}>⚙️</a>
      </div>
      <a href={`/quiz/${selected}`} className="brutal-btn mx-auto w-min">
        start
      </a>
    </div>
  );
}
