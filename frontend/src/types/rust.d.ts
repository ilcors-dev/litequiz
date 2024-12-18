/* This file is generated and managed by tsync */

interface Answer {
  id: number
  question_id: number
  text: string
  is_correct: boolean
  created_at: Date
  updated_at: Date
}

interface AnswerForm {
  question_id: number
  text: string
  is_correct: boolean
}

interface PaginationResult<T> {
  items: Array<T>
  total_items: number
  /** 0-based index */
  page: number
  page_size: number
  num_pages: number
}

interface Category {
  id: number
  name: string
  questions_per_quiz: number
  created_at: Date
  updated_at: Date
}

interface CategoryForm {
  name: string
  questions_per_quiz: number
}

interface PaginationResult<T> {
  items: Array<T>
  total_items: number
  /** 0-based index */
  page: number
  page_size: number
  num_pages: number
}

interface CategoryScoreSetting {
  id: number
  answer_type: string
  score: number
  category_id: number
  created_at: Date
  updated_at: Date
}

interface CategoryScoreSettingForm {
  answer_type: string
  score: number
  category_id: number
}

interface PaginationResult<T> {
  items: Array<T>
  total_items: number
  /** 0-based index */
  page: number
  page_size: number
  num_pages: number
}

interface Question {
  id: number
  question: string
  answer?: boolean
  category_id: number
  is_multiple_choice: boolean
  verified: boolean
  created_at: Date
  updated_at: Date
}

interface QuestionForm {
  question: string
  answer?: boolean
  category_id: number
  is_multiple_choice: boolean
  verified: boolean
}

interface PaginationResult<T> {
  items: Array<T>
  total_items: number
  /** 0-based index */
  page: number
  page_size: number
  num_pages: number
}

interface MultipleChoice {
  id: number
  text: string
}

interface WithHiddenAnswer {
  id: number
  question: string
  verified: boolean
  is_multiple_choice: boolean
  choices: Array<MultipleChoice>
}

interface PartialQuestion {
  id: number
  question: string
  verified: boolean
  is_multiple_choice: boolean
}

interface WithAnswer {
  id: number
  question: string
  answer: boolean
}

interface CategoryWithQuestionCount {
  id: number
  name: string
  question_count: number
}

interface QuizStarterParams {
  category_id: number
}

interface QuizSolution {
  category_id: number
  given_answers: Array<QuizAnswer>
  correct_answers: Array<QuizAnswer>
  correct_answers_count: number
  total_questions: number
  correct_answers_percentage: string
  questions: Array<Question>
  choices: Array<Answer>
  multiple_choice_solutions: Array<Answer>
  score: string
  max_score: number
}

interface QuizStatus {
  category?: Category
  active: boolean
}

interface QuizAnswer {
  question_id: number
  answer?: boolean
  answer_id?: number
}
