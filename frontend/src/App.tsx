import { QueryClient, QueryClientProvider } from 'react-query';
import { Route, Routes, useNavigate } from 'react-router-dom';
import { CategorySettings } from './containers/CategorySettings';
import { Home } from './containers/Home';
import { Quiz } from './containers/Quiz';
import { QuizResult } from './containers/QuizResult';
import { QuizStarter } from './containers/QuizStarter';
import { Todos } from './containers/Todo';
import './index.css';

const App = () => {
	const navigate = useNavigate();
	const queryClient = new QueryClient();
	return (
		<QueryClientProvider client={queryClient}>
			<div className="min-h-screen p-8">
				<Routes>
					<Route path="/" element={<QuizStarter />} />
					<Route path="/home" element={<Home />} />
					<Route path="/todos" element={<Todos />} />
					<Route path=":categoryId/quiz" element={<Quiz />} />
					<Route path="/quiz-result" element={<QuizResult />} />
					<Route
						path="/category-score-settings/:categoryId"
						element={<CategorySettings />}
					/>
					{/* CRA: routes */}
				</Routes>
			</div>
		</QueryClientProvider>
	);
};

export default App;
