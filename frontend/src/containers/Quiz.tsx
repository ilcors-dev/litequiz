import { useState } from 'react';
import { useQuery } from 'react-query';
import { redirect, useParams } from 'react-router-dom';
import { useCategoryApi } from '../apis/useCategoryApi';
import { useQuizApi } from '../apis/useQuizApi';
import { QuizRow } from '../components/QuizRow';
import Modal from 'react-modal';

Modal.setAppElement('#root');

const customStyles = {
	content: {
		top: '50%',
		left: '50%',
		right: 'auto',
		bottom: 'auto',
		marginRight: '-50%',
		transform: 'translate(-50%, -50%)',
	},
};

export const Quiz = () => {
	const { categoryId } = useParams();
	const [deleteQuizModalOpen, setDeleteQuizModalOpen] = useState(false);

	if (!categoryId) {
		return null;
	}

	const deleteQuiz = async () => {
		await useQuizApi().destroy();
		window.location.href = '/';
	};

	const category = useQuery('category', () =>
		useCategoryApi().show(+categoryId)
	);

	const questions = useQuery('quiz', () => useQuizApi().get(+categoryId));

	return (
		<div className="">
			<div className="flex items-end space-x-4">
				<h1 className="text-4xl font-bold">Quiz {category.data?.name}</h1>
				<button
					className="brutal-btn"
					onClick={() => setDeleteQuizModalOpen(true)}
				>
					<span>🗑️</span>
				</button>
			</div>
			<ol className="">
				{questions.data?.map((q, i) => (
					<QuizRow q={q} i={i} key={i} className="my-5" />
				))}
			</ol>
			<Modal
				isOpen={deleteQuizModalOpen}
				contentLabel="Example Modal"
				style={customStyles}
				shouldCloseOnEsc={true}
				onRequestClose={() => setDeleteQuizModalOpen(false)}
				closeTimeoutMS={250}
			>
				<div className="w-[35vw]">
					<div className="relative flex justify-between space-x-8">
						<h1 className="text-2xl font-bold">Delete Quiz?</h1>
						<button
							className="absolute -top-1 -right-1"
							onClick={() => setDeleteQuizModalOpen(false)}
						>
							❌
						</button>
					</div>
					<div className="mt-4">
						<div className="flex justify-center space-x-8">
							<button
								className="brutal-btn"
								onClick={() => setDeleteQuizModalOpen(false)}
							>
								<span className="px-2">🙅</span>
							</button>
							<button className="brutal-btn" onClick={deleteQuiz}>
								<span className="px-2">👍</span>
							</button>
						</div>
					</div>
				</div>
			</Modal>
		</div>
	);
};
