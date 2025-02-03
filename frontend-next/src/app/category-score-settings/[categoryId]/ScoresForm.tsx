"use client";

import { useToast } from "@/hooks/use-toast";
import { api } from "@/lib/axios";
import React from "react";
import { useForm } from "react-hook-form";

interface Props {
  settings: CategoryScoreSettings[];
}

const ScoresForm = React.forwardRef<
  HTMLFormElement,
  React.HTMLAttributes<HTMLFormElement> & Props
>(({ settings, ...props }, ref) => {
  const { toast } = useToast();
  const form = useForm<{ scores: CategoryScoreSettings[] }>({
    defaultValues: {
      scores: [
        {
          ...settings.find((s) => s.answer_type === "correct"),
        },
        {
          ...settings.find((s) => s.answer_type === "wrong"),
        },
        {
          ...settings.find((s) => s.answer_type === "empty"),
        },
      ],
    },
  });

  const onSubmit = async (data: CategoryScoreSettingsPayload) => {
    console.log(data);
    await api
      .post("postCategoryScoreSettings", data, {
        category_id: settings[0].category_id,
      })
      .then(() => {
        toast({
          title: "Success",
          description: "Scores updated.",
        });
      })
      .catch(() => {
        toast({
          title: "Error",
          description: "Failed to update scores.",
          variant: "destructive",
        });
      });
  };

  return (
    <form ref={ref} {...props} onSubmit={form.handleSubmit(onSubmit)}>
      <div className="flex flex-col space-y-4">
        <div className="flex items-center space-x-4">
          <label htmlFor="correct-answer">Correct answer</label>
          <input
            type="number"
            className="brutal-border p-1"
            id="correct-answer"
            step={0.01}
            {...form.register("scores.0.score", {
              valueAsNumber: true,
            })}
          />
        </div>
        <div className="flex items-center space-x-4">
          <label htmlFor="incorrect-answer">Incorrect answer</label>
          <input
            type="number"
            className="brutal-border p-1"
            id="incorrect-answer"
            step={0.01}
            {...form.register("scores.1.score", {
              valueAsNumber: true,
            })}
          />
        </div>
        <div className="flex items-center space-x-4">
          <label htmlFor="empty-answer">Empty answer</label>
          <input
            type="number"
            className="brutal-border p-1"
            id="empty-answer"
            step={0.01}
            {...form.register("scores.2.score", {
              valueAsNumber: true,
            })}
          />
        </div>
        <button className="brutal-btn w-max">Save</button>
      </div>
    </form>
  );
});

ScoresForm.displayName = "ScoresForm";

export default ScoresForm;
