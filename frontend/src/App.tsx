import { Route, Routes, useNavigate } from 'react-router-dom';
import { Home } from './containers/Home';
import { Quiz } from './containers/Quiz';
import { Todos } from './containers/Todo';
import './index.css';

const App = () => {
	const navigate = useNavigate();
	/* CRA: app hooks */

	// @ts-ignore
	return (
		<div className="min-h-screen p-8">
			<Routes>
				<Route path="/" element={<Quiz />} />
				<Route path="/home" element={<Home />} />
				<Route path="/todos" element={<Todos />} />
				{/* CRA: routes */}
			</Routes>
		</div>
	);
};

export default App;
