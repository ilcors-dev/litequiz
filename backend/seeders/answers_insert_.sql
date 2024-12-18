-- DOMANDA 1
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Il Design Thinking mira alla definizione di una soluzione ideale incrociando le dimensioni di:', 3, 1);
INSERT INTO answers (text, is_correct, question_id)
VALUES 
('unicità, complessità e redditività', false, (SELECT id FROM questions WHERE question = 'Il Design Thinking mira alla definizione di una soluzione ideale incrociando le dimensioni di:')),
('desiderabilità, fattibilità e redditività', true, (SELECT id FROM questions WHERE question = 'Il Design Thinking mira alla definizione di una soluzione ideale incrociando le dimensioni di:')),
('fattibilità, complessità e desiderabilità', false, (SELECT id FROM questions WHERE question = 'Il Design Thinking mira alla definizione di una soluzione ideale incrociando le dimensioni di:')),
('unictà, fattibilità e desiderabilità', false, (SELECT id FROM questions WHERE question = 'Il Design Thinking mira alla definizione di una soluzione ideale incrociando le dimensioni di:'));

-- DOMANDA 2
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Nel Project Management, lo Sponsor di un progetto', 3, 1);
INSERT INTO answers (text, is_correct, question_id)
VALUES 
('ha un ruolo fondamentale in fase di chiusura del progetto', false, (SELECT id FROM questions WHERE question = 'Nel Project Management, lo Sponsor di un progetto')),
('si occupa dell''analisi di fattibilità del progetto', false, (SELECT id FROM questions WHERE question = 'Nel Project Management, lo Sponsor di un progetto')),
('è il punto di riferimento per il Project Manager', false, (SELECT id FROM questions WHERE question = 'Nel Project Management, lo Sponsor di un progetto')),
('Tutte le precedenti', true, (SELECT id FROM questions WHERE question = 'Nel Project Management, lo Sponsor di un progetto'));

-- DOMANDA 3
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('I requisiti per l’ottenimento di un brevetto sono', 3, 1);
INSERT INTO answers (text, is_correct, question_id)
VALUES 
('Novità, non ovvietà e esclusività', false, (SELECT id FROM questions WHERE question = 'I requisiti per l’ottenimento di un brevetto sono')),
('Novità, esclusività e replicabilità', false, (SELECT id FROM questions WHERE question = 'I requisiti per l’ottenimento di un brevetto sono')),
('Novità, non ovvietà e commerciabilità', true, (SELECT id FROM questions WHERE question = 'I requisiti per l’ottenimento di un brevetto sono')),
('Novità, commerciabilità ed esclusività', false, (SELECT id FROM questions WHERE question = 'I requisiti per l’ottenimento di un brevetto sono'));

-- DOMANDA 4
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Il metodo SCRUM', 3, 1);
INSERT INTO answers (text, is_correct, question_id)
VALUES 
('è una tecnica di project management tradizionale', false, (SELECT id FROM questions WHERE question = 'Il metodo SCRUM')),
('è un tecnica di gestione progetti basata su sprint nelle fasi finali del progetto', false, (SELECT id FROM questions WHERE question = 'Il metodo SCRUM')),
('è sinonimo di modello Kanban', false, (SELECT id FROM questions WHERE question = 'Il metodo SCRUM')),
('si applica particolarmente bene a progetti complessi', true, (SELECT id FROM questions WHERE question = 'Il metodo SCRUM'));

-- DOMANDA 5
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Gli approcci Agili di Project Management si fondano sui concetti di', 3, 1);
INSERT INTO answers (text, is_correct, question_id)
VALUES 
('irreversibilità, sequenzialità, iteratività', false, (SELECT id FROM questions WHERE question = 'Gli approcci Agili di Project Management si fondano sui concetti di')),
('irreversibilità, flessibilità, iteratività', false, (SELECT id FROM questions WHERE question = 'Gli approcci Agili di Project Management si fondano sui concetti di')),
('incrementalità, sequenzialità, iteratività', false, (SELECT id FROM questions WHERE question = 'Gli approcci Agili di Project Management si fondano sui concetti di')),
('incrementalità, flessibilità, iteratività', true, (SELECT id FROM questions WHERE question = 'Gli approcci Agili di Project Management si fondano sui concetti di'));

-- DOMANDA 6
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('La struttura a matrice di un''organizzazione', 3, 1);
INSERT INTO answers (text, is_correct, question_id)
VALUES 
('puà essere debole, equilibrata, forte', false, (SELECT id FROM questions WHERE question = 'La struttura a matrice di un''organizzazione')),
('unisce le caratteristiche della struttura funzionale e quella divisionale', false, (SELECT id FROM questions WHERE question = 'La struttura a matrice di un''organizzazione')),
('soffre di una difficile distribuzione delle responsabilità', false, (SELECT id FROM questions WHERE question = 'La struttura a matrice di un''organizzazione')),
('tutte le precedenti', true, (SELECT id FROM questions WHERE question = 'La struttura a matrice di un''organizzazione'));

-- DOMANDA 7
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('L''innovazione migliora seguendo un andamento di tipo a S rispetto a:', 3, 1);
INSERT INTO answers (text, is_correct, question_id)
VALUES 
('tempo', false, (SELECT id FROM questions WHERE question = 'L''innovazione migliora seguendo un andamento di tipo a S rispetto a:')),
('risorse investite', true, (SELECT id FROM questions WHERE question = 'L''innovazione migliora seguendo un andamento di tipo a S rispetto a:')),
('diffusione', false, (SELECT id FROM questions WHERE question = 'L''innovazione migliora seguendo un andamento di tipo a S rispetto a:')),
('competizione', false, (SELECT id FROM questions WHERE question = 'L''innovazione migliora seguendo un andamento di tipo a S rispetto a:'));

-- DOMANDA 8
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Il coinvolgimento del cliente negli approcci Agile di Project Management è', 3, 1);
INSERT INTO answers (text, is_correct, question_id)
VALUES 
('assente', false, (SELECT id FROM questions WHERE question = 'Il coinvolgimento del cliente negli approcci Agile di Project Management è')),
('raro', false, (SELECT id FROM questions WHERE question = 'Il coinvolgimento del cliente negli approcci Agile di Project Management è')),
('al bisogno', false, (SELECT id FROM questions WHERE question = 'Il coinvolgimento del cliente negli approcci Agile di Project Management è')),
('costante', true, (SELECT id FROM questions WHERE question = 'Il coinvolgimento del cliente negli approcci Agile di Project Management è'));

-- DOMANDA 9
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Le invenzioni tecniche sono proteggibili tramite:', 3, 1);
INSERT INTO answers (text, is_correct, question_id)
VALUES 
('marchi', false, (SELECT id FROM questions WHERE question = 'Le invenzioni tecniche sono proteggibili tramite:')),
('copyright', false, (SELECT id FROM questions WHERE question = 'Le invenzioni tecniche sono proteggibili tramite:')),
('brevetti', true, (SELECT id FROM questions WHERE question = 'Le invenzioni tecniche sono proteggibili tramite:')),
('nessuna delle precedenti', false, (SELECT id FROM questions WHERE question = 'Le invenzioni tecniche sono proteggibili tramite:'));

-- DOMANDA 10
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Il Design Thinking', 3, 1);
INSERT INTO answers (text, is_correct, question_id)
VALUES 
('presena diversi modelli di analisi', true, (SELECT id FROM questions WHERE question = 'Il Design Thinking')),
('può essere applicato se nel team è presente un esperto di design', false, (SELECT id FROM questions WHERE question = 'Il Design Thinking')),
('si basa sulla minimizzazione di empatia col cliente per accelerare il processo di sviluppo prodotto', false, (SELECT id FROM questions WHERE question = 'Il Design Thinking')),
('tutte le precedenti', false, (SELECT id FROM questions WHERE question = 'Il Design Thinking'));
