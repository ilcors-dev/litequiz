"use client";

import { api } from "@/lib/axios";
import {
  AlertDialog,
  AlertDialogAction,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
  AlertDialogTrigger,
} from "./ui/alert-dialog";

interface Props {
  btnIcon?: string;
  popupMessage?: string;
}

export const QuizDestroy = ({ btnIcon, popupMessage }: Props) => {
  const deleteQuiz = async () => {
    await api.delete("destroyQuiz");
    window.location.href = "/";
  };

  return (
    <>
      <AlertDialog>
        <AlertDialogTrigger className="brutal-btn">
          {btnIcon ?? "🗑️"}
        </AlertDialogTrigger>
        <AlertDialogContent>
          <AlertDialogHeader>
            <AlertDialogTitle>
              {popupMessage ?? "Delete Quiz?"}
            </AlertDialogTitle>
          </AlertDialogHeader>
          <AlertDialogFooter>
            <AlertDialogCancel>❌</AlertDialogCancel>
            <AlertDialogAction onClick={deleteQuiz}>👍</AlertDialogAction>
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialog>
    </>
  );
};
