/* This file is generated and managed by tsync */

interface Category {
  id: number
  name: string
  created_at: Date
  updated_at: Date
}

interface CategoryForm {
  name: string
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
  answer: boolean
  category_id: number
  created_at: Date
  updated_at: Date
}

interface QuestionForm {
  question: string
  answer: boolean
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

interface WithHiddenAnswer {
  id: number
  question: string
}

interface WithAnswer {
  id: number
  question: string
  answer: boolean
}

interface Todo {
  id: number
  text: string
  created_at: Date
}

interface TodoForm {
  text: string
}

interface PaginationResult<T> {
  items: Array<T>
  total_items: number
  /** 0-based index */
  page: number
  page_size: number
  num_pages: number
}

interface PaginationParams {
  page: number
  page_size: number
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
}

interface PaginationParams {
  page: number
  page_size: number
}
