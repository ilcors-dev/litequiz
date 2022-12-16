import { useState } from 'react';
import ReactModal from 'react-modal';
import { useQuizSubmissionApi } from '../apis/useQuizSubmissionApi';

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

interface Props {
	answers: QuizAnswer[];
}

export const QuizSubmit = ({ answers }: Props) => {
	const [openModal, setOpenModal] = useState(false);

	const submit = async () => {
		await useQuizSubmissionApi().post(answers);
		window.location.href = '/quiz-result';
	};

	return (
		<>
			<button className="brutal-btn" onClick={() => setOpenModal(true)}>
				<span>👍</span>
			</button>
			<ReactModal
				isOpen={openModal}
				contentLabel="Submit quiz?"
				style={customStyles}
				shouldCloseOnEsc={true}
				onRequestClose={() => setOpenModal(false)}
				closeTimeoutMS={250}
			>
				<div className="w-[35vw]">
					<div className="relative flex justify-between space-x-8">
						<h1 className="text-2xl font-bold">Submit Quiz?</h1>
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
							<button className="brutal-btn" onClick={submit}>
								<span className="px-2">👍</span>
							</button>
						</div>
					</div>
				</div>
			</ReactModal>
		</>
	);
};
