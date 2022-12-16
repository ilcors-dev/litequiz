import { useState } from 'react';
import ReactModal from 'react-modal';
import { useQuizStatusApi } from '../apis/useQuizStatusApi';

ReactModal.setAppElement('#root');

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

export const QuizDestroy = () => {
	const [openModal, setOpenModal] = useState(false);

	const deleteQuiz = async () => {
		await useQuizStatusApi().destroy();
		window.location.href = '/';
	};

	return (
		<>
			<button className="brutal-btn" onClick={() => setOpenModal(true)}>
				<span>🗑️</span>
			</button>
			<ReactModal
				isOpen={openModal}
				contentLabel="Delete quiz?"
				style={customStyles}
				shouldCloseOnEsc={true}
				onRequestClose={() => setOpenModal(false)}
				closeTimeoutMS={250}
			>
				<div className="w-[35vw]">
					<div className="relative flex justify-between space-x-8">
						<h1 className="text-2xl font-bold">Delete Quiz?</h1>
						<button
							className="absolute -top-1 -right-1"
							onClick={() => setOpenModal(false)}
						>
							❌
						</button>
					</div>
					<div className="mt-4">
						<div className="flex justify-center space-x-8">
							<button
								className="brutal-btn"
								onClick={() => setOpenModal(false)}
							>
								<span className="px-2">🙅</span>
							</button>
							<button className="brutal-btn" onClick={deleteQuiz}>
								<span className="px-2">👍</span>
							</button>
						</div>
					</div>
				</div>
			</ReactModal>
		</>
	);
};
