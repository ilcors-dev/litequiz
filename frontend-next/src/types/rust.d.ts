/* This file is generated and managed by tsync */

/** Struct representing a row in table `answers` */
interface Answers {
  /** Field representing column `id` */
  id: number;
  /** Field representing column `question_id` */
  question_id: number;
  /** Field representing column `text` */
  text: string;
  /** Field representing column `is_correct` */
  is_correct: boolean;
  /** Field representing column `created_at` */
  created_at: Date;
  /** Field representing column `updated_at` */
  updated_at: Date;
}

/** Create Struct for a row in table `answers` for [`Answers`] */
interface CreateAnswers {
  /** Field representing column `id` */
  id: number;
  /** Field representing column `question_id` */
  question_id: number;
  /** Field representing column `text` */
  text: string;
  /** Field representing column `is_correct` */
  is_correct: boolean;
}

/** Update Struct for a row in table `answers` for [`Answers`] */
interface UpdateAnswers {
  /** Field representing column `question_id` */
  question_id?: number;
  /** Field representing column `text` */
  text?: string;
  /** Field representing column `is_correct` */
  is_correct?: boolean;
  /** Field representing column `created_at` */
  created_at?: Date;
  /** Field representing column `updated_at` */
  updated_at?: Date;
}

/** Result of a `.paginate` function */
interface PaginationResult<T> {
  /** Resulting items that are from the current page */
  items: Array<T>;
  /** The count of total items there are */
  total_items: number;
  /** Current page, 0-based index */
  page: number;
  /** Size of a page */
  page_size: number;
  /** Number of total possible pages, given the `page_size` and `total_items` */
  num_pages: number;
}

/** Struct representing a row in table `categories` */
interface Categories {
  /** Field representing column `id` */
  id: number;
  /** Field representing column `name` */
  name: string;
  /** Field representing column `questions_per_quiz` */
  questions_per_quiz: number;
  /** Field representing column `created_at` */
  created_at: Date;
  /** Field representing column `updated_at` */
  updated_at: Date;
}

/** Create Struct for a row in table `categories` for [`Categories`] */
interface CreateCategories {
  /** Field representing column `id` */
  id: number;
  /** Field representing column `name` */
  name: string;
  /** Field representing column `questions_per_quiz` */
  questions_per_quiz: number;
}

/** Update Struct for a row in table `categories` for [`Categories`] */
interface UpdateCategories {
  /** Field representing column `name` */
  name?: string;
  /** Field representing column `questions_per_quiz` */
  questions_per_quiz?: number;
  /** Field representing column `created_at` */
  created_at?: Date;
  /** Field representing column `updated_at` */
  updated_at?: Date;
}

/** Result of a `.paginate` function */
interface PaginationResult<T> {
  /** Resulting items that are from the current page */
  items: Array<T>;
  /** The count of total items there are */
  total_items: number;
  /** Current page, 0-based index */
  page: number;
  /** Size of a page */
  page_size: number;
  /** Number of total possible pages, given the `page_size` and `total_items` */
  num_pages: number;
}

/** Struct representing a row in table `category_score_settings` */
interface CategoryScoreSettings {
  /** Field representing column `id` */
  id: number;
  /** Field representing column `answer_type` */
  answer_type: string;
  /** Field representing column `score` */
  score: number;
  /** Field representing column `category_id` */
  category_id: number;
  /** Field representing column `created_at` */
  created_at: Date;
  /** Field representing column `updated_at` */
  updated_at: Date;
}

/** Create Struct for a row in table `category_score_settings` for [`CategoryScoreSettings`] */
interface CreateCategoryScoreSettings {
  /** Field representing column `id` */
  id: number;
  /** Field representing column `answer_type` */
  answer_type: string;
  /** Field representing column `score` */
  score: number;
  /** Field representing column `category_id` */
  category_id: number;
}

/** Update Struct for a row in table `category_score_settings` for [`CategoryScoreSettings`] */
interface UpdateCategoryScoreSettings {
  /** Field representing column `answer_type` */
  answer_type?: string;
  /** Field representing column `score` */
  score?: number;
  /** Field representing column `category_id` */
  category_id?: number;
  /** Field representing column `created_at` */
  created_at?: Date;
  /** Field representing column `updated_at` */
  updated_at?: Date;
}

/** Result of a `.paginate` function */
interface PaginationResult<T> {
  /** Resulting items that are from the current page */
  items: Array<T>;
  /** The count of total items there are */
  total_items: number;
  /** Current page, 0-based index */
  page: number;
  /** Size of a page */
  page_size: number;
  /** Number of total possible pages, given the `page_size` and `total_items` */
  num_pages: number;
}

/** Struct representing a row in table `questions` */
interface Questions {
  /** Field representing column `id` */
  id: number;
  /** Field representing column `question` */
  question: string;
  /** Field representing column `answer` */
  answer?: boolean;
  /** Field representing column `category_id` */
  category_id: number;
  /** Field representing column `is_multiple_choice` */
  is_multiple_choice: boolean;
  /** Field representing column `verified` */
  verified: boolean;
  /** Field representing column `created_at` */
  created_at: Date;
  /** Field representing column `updated_at` */
  updated_at: Date;
}

/** Create Struct for a row in table `questions` for [`Questions`] */
interface CreateQuestions {
  /** Field representing column `id` */
  id: number;
  /** Field representing column `question` */
  question: string;
  /** Field representing column `answer` */
  answer?: boolean;
  /** Field representing column `category_id` */
  category_id: number;
  /** Field representing column `is_multiple_choice` */
  is_multiple_choice: boolean;
  /** Field representing column `verified` */
  verified: boolean;
}

/** Update Struct for a row in table `questions` for [`Questions`] */
interface UpdateQuestions {
  /** Field representing column `question` */
  question?: string;
  /** Field representing column `answer` */
  answer?: boolean;
  /** Field representing column `category_id` */
  category_id?: number;
  /** Field representing column `is_multiple_choice` */
  is_multiple_choice?: boolean;
  /** Field representing column `verified` */
  verified?: boolean;
  /** Field representing column `created_at` */
  created_at?: Date;
  /** Field representing column `updated_at` */
  updated_at?: Date;
}

/** Result of a `.paginate` function */
interface PaginationResult<T> {
  /** Resulting items that are from the current page */
  items: Array<T>;
  /** The count of total items there are */
  total_items: number;
  /** Current page, 0-based index */
  page: number;
  /** Size of a page */
  page_size: number;
  /** Number of total possible pages, given the `page_size` and `total_items` */
  num_pages: number;
}

interface MultipleChoice {
  id: number;
  text: string;
}

interface WithHiddenAnswer {
  id: number;
  question: string;
  verified: boolean;
  is_multiple_choice: boolean;
  choices: Array<MultipleChoice>;
}

interface PartialQuestion {
  id: number;
  question: string;
  verified: boolean;
  is_multiple_choice: boolean;
}

interface WithAnswer {
  id: number;
  question: string;
  answer: boolean;
}

interface PaginationResult<T> {
  items: Array<T>;
  total_items: number;
  /** 0-based index */
  page: number;
  page_size: number;
  num_pages: number;
}

interface CategoryWithQuestionCount {
  id: number;
  name: string;
  question_count: number;
}

interface QuizStarterParams {
  category_id: number;
}

interface QuizSolution {
  category_id: number;
  given_answers: Array<QuizAnswer>;
  correct_answers: Array<QuizAnswer>;
  correct_answers_count: number;
  total_questions: number;
  correct_answers_percentage: string;
  questions: Array<Questions>;
  choices: Array<Answers>;
  multiple_choice_solutions: Array<Answers>;
  score: string;
  max_score: number;
}

interface QuizStatus {
  category?: Categories;
  active: boolean;
}

interface QuizAnswer {
  question_id: number;
  answer?: boolean;
  answer_id?: number;
}
