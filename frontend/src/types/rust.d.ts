/* This file is generated and managed by tsync */

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
  verified: boolean
  created_at: Date
  updated_at: Date
}

interface QuestionForm {
  question: string
  answer?: boolean
  category_id: number
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

interface WithHiddenAnswer {
  id: number
  question: string
  verified: boolean
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
