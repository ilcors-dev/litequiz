"use client";

import classNames from "classnames";
import React from "react";
import { OllamaNoStreamResponse, useAi } from "../apis/useAi";
import ReactMarkdown from "react-markdown";
import rehypeKatex from "rehype-katex";
import remarkMath from "remark-math";
import "katex/dist/katex.min.css";

interface Props {
  question: string;
  choices: Answer[];
  correctAnswers: number[];
}

const ExplainAnswerAi = React.forwardRef<
  HTMLDivElement,
  React.HTMLAttributes<HTMLDivElement> & Props
>(({ question, choices, correctAnswers, ...props }, ref) => {
  const api = useAi();
  const [loading, setLoading] = React.useState(false);
  const [result, setResult] = React.useState<string>();

  const handleClick = async () => {
    setLoading(true);

    const text = {
      question: question,
      choices: choices.map((c) => c.text),
      correct_answers: choices
        .filter((c) => correctAnswers.includes(c.id))
        .map((c) => c.text),
    };

    console.log(text);

    try {
      const response = await api.explainAnswer(JSON.stringify(text));

      const data: OllamaNoStreamResponse = await response.json();

      setResult(data.response);
    } catch (error) {
      console.error(error);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div {...props} ref={ref} className={classNames(props.className)}>
      <button
        className="brutal-btn rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700"
        onClick={handleClick}
      >
        Explain 🤖
      </button>
      {loading && <div className="mt-4">Loading...</div>}
      {result && (
        <>
          <ReactMarkdown
            className="mt-4"
            remarkPlugins={[remarkMath]}
            rehypePlugins={[rehypeKatex]}
          >
            {result}
          </ReactMarkdown>

          <p className="mt-4 text-xs text-gray-500">
            <i>May be inaccurate!</i>
          </p>
        </>
      )}
    </div>
  );
});

export default ExplainAnswerAi;
