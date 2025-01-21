"use client";

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
  answers: QuizAnswer[];
}

export const QuizSubmit = ({ answers }: Props) => {
  const submit = async () => {
    window.location.href = "/quiz-result";
  };

  return (
    <>
      <AlertDialog>
        <AlertDialogTrigger className="brutal-btn">👍</AlertDialogTrigger>
        <AlertDialogContent>
          <AlertDialogHeader>
            <AlertDialogTitle>Submit Quiz?</AlertDialogTitle>
          </AlertDialogHeader>
          <AlertDialogFooter>
            <AlertDialogCancel>❌</AlertDialogCancel>
            <AlertDialogAction onClick={submit}>👍</AlertDialogAction>
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialog>
    </>
  );
};
