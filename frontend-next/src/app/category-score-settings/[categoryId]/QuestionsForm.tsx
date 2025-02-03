"use client";

import { useToast } from "@/hooks/use-toast";
import { api } from "@/lib/axios";
import React from "react";
import { useForm } from "react-hook-form";

interface Props {
  category: Categories;
}

const QuestionsForm = React.forwardRef<
  HTMLFormElement,
  React.HTMLAttributes<HTMLFormElement> & Props
>(({ category, ...props }, ref) => {
  const { toast } = useToast();
  const form = useForm<UpdateCategories>({
    defaultValues: {
      name: category.name,
      questions_per_quiz: category.questions_per_quiz,
    },
  });

  const onSubmit = async (data: UpdateCategories) => {
    console.log(data);
    await api
      .put(
        "updateCategory",
        data,
        {
          categoryId: category.id,
        },
        {
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
        },
      )
      .then(() => {
        toast({
          title: "Success",
          description: "Category updated.",
        });
      })
      .catch(() => {
        toast({
          title: "Error",
          description: "Failed to update category.",
          variant: "destructive",
        });
      });
  };

  return (
    <form ref={ref} {...props} onSubmit={form.handleSubmit(onSubmit)}>
      <div className="flex flex-col space-y-4">
        <div className="flex items-center space-x-4">
          <label htmlFor="questions-per-quiz">Total questions per quiz</label>
          <input
            type="number"
            className="brutal-border p-1"
            id="questions-per-quiz"
            step={1}
            {...form.register("questions_per_quiz")}
          />
        </div>
        <button className="brutal-btn w-max">Save</button>
      </div>
    </form>
  );
});

QuestionsForm.displayName = "QuestionsForm";

export default QuestionsForm;
