-- DOMANDA 1
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il Design Thinking mira alla definizione di una soluzione ideale incrociando le dimensioni di:', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('unicità, complessità e redditività', 0, (SELECT id FROM question_id)),
('desiderabilità, fattibilità e redditività', 1, (SELECT id FROM question_id)),
('fattibilità, complessità e desiderabilità', 0, (SELECT id FROM question_id)),
('unictà, fattibilità e desiderabilità', 0, (SELECT id FROM question_id));

-- DOMANDA 2
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Nel Project Management, lo Sponsor di un progetto', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('ha un ruolo fondamentale in fase di chiusura del progetto', 0, (SELECT id FROM question_id)),
('si occupa dell''analisi di fattibilità del progetto', 0, (SELECT id FROM question_id)),
('è il punto di riferimento per il Project Manager', 0, (SELECT id FROM question_id)),
('Tutte le precedenti', 1, (SELECT id FROM question_id));

-- DOMANDA 3
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('I requisiti per l’ottenimento di un brevetto sono', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Novità, non ovvietà e esclusività', 0, (SELECT id FROM question_id)),
('Novità, esclusività e replicabilità', 0, (SELECT id FROM question_id)),
('Novità, non ovvietà e commerciabilità', 1, (SELECT id FROM question_id)),
('Novità, commerciabilità ed esclusività', 0, (SELECT id FROM question_id));

-- DOMANDA 4
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il metodo SCRUM', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('si basa su interazioni frequenti', 1, (SELECT id FROM question_id)),
('è utile quando i consumatori hanno bisogni chiari e stabili', 0, (SELECT id FROM question_id)),
('è chiamato anche Kanban', 0, (SELECT id FROM question_id)),
('utilizza degli "sprint" per finalizzare il progetto nelle fasi finali', 0, (SELECT id FROM question_id));

-- DOMANDA 5
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('La curva ad S negli studi di innovazione può descrivere', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('l’incremento di performance tecnologica col passare del tempo', 0, (SELECT id FROM question_id)),
('l’incremento di diffusione della tecnologia all’aumentare dell’ammontare investito', 0, (SELECT id FROM question_id)),
('l’incremento di diffusione della tecnologia all’aumentare della performance tecnologica', 0, (SELECT id FROM question_id)),
('l’incremento di performance tecnologica all’aumentare dell’ammontare investito', 1, (SELECT id FROM question_id));

-- DOMANDA 6
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Un progetto d''innovazione si caratterizza per essere', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('stabile', 0, (SELECT id FROM question_id)),
('vincolato', 0, (SELECT id FROM question_id)),
('replicabile', 0, (SELECT id FROM question_id)),
('impulsivo', 1, (SELECT id FROM question_id));

-- DOMANDA 7
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Negli studi di diffusione dell’innovazione, il termine Chasm (Abisso) è utilizzato per indicare', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('la transizione dagli innovatori agli early adopters', 0, (SELECT id FROM question_id)),
('la transizione dagli early adopters alla maggioranza anticipataria', 1, (SELECT id FROM question_id)),
('la transizione dalla maggioranza anticipataria alla maggioranza ritardataria', 0, (SELECT id FROM question_id)),
('la transizione dalla maggioranza ritardataria ai ritardatari', 0, (SELECT id FROM question_id));

-- DOMANDA 8
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il team di progetto nel processo di sviluppo nuovo prodotti deve essere caratterizzato da', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('tanti project manager che gestiscano le singole fasi del progetto', 0, (SELECT id FROM question_id)),
('una struttura di lungo termine per sviluppare più progetti', 0, (SELECT id FROM question_id)),
('omogeneità di esperienze per facilitare la risoluzione di eventuali problematiche', 0, (SELECT id FROM question_id)),
('interfunzionalità per collegare diverse aree dell''organizzazione', 1, (SELECT id FROM question_id));

-- DOMANDA 9
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il metodo Agile per il Project Manager', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('si basa su un approccio sequenziale', 0, (SELECT id FROM question_id)),
('sono in grado di gestire progetti complessi ma in un contesto con limitata incertezza', 0, (SELECT id FROM question_id)),
('premia la incrementalità del procersso di sviluppo', 1, (SELECT id FROM question_id)),
('limita al massimo le sperimentazioni', 0, (SELECT id FROM question_id));

-- DOMANDA 10
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Se si parla di brevetti e marchi, è corretto dire che:', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('entrambi proteggono diritti d''autore', 0, (SELECT id FROM question_id)),
('entrambi proteggono segni distintivi', 0, (SELECT id FROM question_id)),
('entrambi proteggono invenzioni tecniche', 0, (SELECT id FROM question_id)),
('nessuna delle precedenti', 1, (SELECT id FROM question_id));

-- DOMANDA 1
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('L''innovazione', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('è sinonimo di invenzione', 0, (SELECT id FROM question_id)),
('viene prima dell''invenzione', 0, (SELECT id FROM question_id)),
('è sinonimo di R&S', 0, (SELECT id FROM question_id)),
('nessuna delle precedenti', 1, (SELECT id FROM question_id));

-- DOMANDA 2
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Nel Project Management, lo Sponsor di un progetto', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('ha un ruolo fondamentale in fase di chiusura del progetto', 0, (SELECT id FROM question_id)),
('si occupa dell''analisi di fattibilità del progetto', 0, (SELECT id FROM question_id)),
('è il punto di riferimento per il Project Manager', 0, (SELECT id FROM question_id)),
('Tutte le precedenti', 1, (SELECT id FROM question_id));

-- DOMANDA 3
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Empatia è un concetto chiave negli studi di', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('project management', 0, (SELECT id FROM question_id)),
('diffusione dell''innovazione', 0, (SELECT id FROM question_id)),
('design thinking', 1, (SELECT id FROM question_id)),
('tutte le precedenti', 0, (SELECT id FROM question_id));

-- DOMANDA 4
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il metodo SCRUM', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('è utile quando i consumatori hanno bisogni chiari e stabili', 0, (SELECT id FROM question_id)),
('si basa su interazioni frequenti', 1, (SELECT id FROM question_id)),
('è chiamato anche Kanban', 0, (SELECT id FROM question_id)),
('utilizza degli "sprint" per finalizzare il progetto nelle fasi finali', 0, (SELECT id FROM question_id));

-- DOMANDA 5
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Gli approcci Agili di Project Management si fondano sui concetti di', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('irreversibilità, sequenzialità, iteratività', 0, (SELECT id FROM question_id)),
('irreversibilità, flessibilità, iteratività', 0, (SELECT id FROM question_id)),
('incrementalità, sequenzialità, iteratività', 0, (SELECT id FROM question_id)),
('incrementalità, flessibilità, iteratività', 1, (SELECT id FROM question_id));

-- DOMANDA 6
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Una pianificazione agile', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('non è applicabile per innovazioni complesse', 0, (SELECT id FROM question_id)),
('richiede un controllo costante del processo di avanzamento', 1, (SELECT id FROM question_id)),
('si basa su team omogenei in termini di funzioni aziendali', 0, (SELECT id FROM question_id)),
('nessuna delle precedenti', 0, (SELECT id FROM question_id));

-- DOMANDA 7
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Negli studi di diffusione dell’innovazione, il termine Chasm (Abisso) indica', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('la transizione dagli innovatori agli early adopters', 0, (SELECT id FROM question_id)),
('un periodo di crescita veloce del processo di diffusione', 0, (SELECT id FROM question_id)),
('il raggiungimento dell''84% dei possibili utilizzatori', 0, (SELECT id FROM question_id)),
('la fase precedente il raggiungimento del grosso del mercato', 1, (SELECT id FROM question_id));

-- DOMANDA 8
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il team di progetto nel processo di sviluppo nuovo prodotti deve essere caratterizzato da', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('tanti project manager che gestiscano le singole fasi del progetto', 0, (SELECT id FROM question_id)),
('una struttura di lungo termine per sviluppare più progetti', 0, (SELECT id FROM question_id)),
('omogeneità di esperienze per facilitare la risoluzione di eventuali problematiche', 0, (SELECT id FROM question_id)),
('interfunzionalità per collegare diverse aree dell''organizzazione', 1, (SELECT id FROM question_id));

-- DOMANDA 9
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il metodo Agile per il Project Manager', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('si basa su un approccio sequenziale', 0, (SELECT id FROM question_id)),
('sono in grado di gestire progetti complessi ma in un contesto con limitata incertezza', 0, (SELECT id FROM question_id)),
('premia la incrementalità del procersso di sviluppo', 1, (SELECT id FROM question_id)),
('limita al massimo le sperimentazioni', 0, (SELECT id FROM question_id));

-- DOMANDA 10
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Se si parla di brevetti e marchi, è corretto dire che:', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('entrambi proteggono diritti d''autore', 0, (SELECT id FROM question_id)),
('entrambi proteggono segni distintivi', 0, (SELECT id FROM question_id)),
('entrambi si basano su innovazione', 1, (SELECT id FROM question_id)),
('entrambi proteggono invenzioni tecniche', 0, (SELECT id FROM question_id));

-- DOMANDA 1
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il modello SCRUM', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('è una tecnica di project management tradizionale', 0, (SELECT id FROM question_id)),
('è un tecnica di gestione progetti basata su sprint nelle fasi finali del progetto', 0, (SELECT id FROM question_id)),
('è sinonimo di modello Kanban', 0, (SELECT id FROM question_id)),
('si applica particolarmente bene a progetti complessi', 1, (SELECT id FROM question_id));

-- DOMANDA 2
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('I modelli Agile di Project Management si caratterizzano per uno sviluppo dei progetti di tipo', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('esponenziale, flessibile e incrementale', 0, (SELECT id FROM question_id)),
('esponenziale, flessibile e sequenziale', 0, (SELECT id FROM question_id)),
('iterativo, flessibile e incrementale', 1, (SELECT id FROM question_id)),
('lineare, flessibile e sequenziale', 0, (SELECT id FROM question_id));

-- DOMANDA 3
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Negli approcci Scrum, il product backlog', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('rappresenta la funzionalità principale del sistema che si deve realizzare', 0, (SELECT id FROM question_id)),
('è una visualizzazione grafica del prototipo di prodotto', 0, (SELECT id FROM question_id)),
('contiene una lista di elementi da realizzare ordinati per priorità', 1, (SELECT id FROM question_id)),
('è un documento statico che non richiede aggiornamenti', 0, (SELECT id FROM question_id));

-- DOMANDA 4
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('La tecnica Kanban', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('si basa su strumenti visuali', 1, (SELECT id FROM question_id)),
('non si può integrare con l''approccio Scrum', 0, (SELECT id FROM question_id)),
('è stata sviluppata in Silicon Valley', 0, (SELECT id FROM question_id)),
('nasce nell''ambito del marketing', 0, (SELECT id FROM question_id));

-- DOMANDA 5
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('L''innovazione di prodotto può essere', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('marginale ma non architetturale', 0, (SELECT id FROM question_id)),
('radicale ma non marginale', 0, (SELECT id FROM question_id)),
('marginale ma non radicale', 0, (SELECT id FROM question_id)),
('nessuna delle precedenti', 1, (SELECT id FROM question_id));

-- DOMANDA 6
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('La struttura a matrice di un''organizzazione', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('puà essere debole, equilibrata, forte', 0, (SELECT id FROM question_id)),
('unisce le caratteristiche della struttura funzionale e quella divisionale', 0, (SELECT id FROM question_id)),
('soffre di una difficile distribuzione delle responsabilità', 0, (SELECT id FROM question_id)),
('tutte le precedenti', 1, (SELECT id FROM question_id));

-- DOMANDA 7
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('L''innovazione migliora seguendo un andamento di tipo a S rispetto a:', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('tempo', 0, (SELECT id FROM question_id)),
('risorse investite', 1, (SELECT id FROM question_id)),
('diffusione', 0, (SELECT id FROM question_id)),
('competizione', 0, (SELECT id FROM question_id));

-- DOMANDA 8
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il coinvolgimento del cliente negli approcci Agile di Project Management è', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('assente', 0, (SELECT id FROM question_id)),
('raro', 0, (SELECT id FROM question_id)),
('al bisogno', 0, (SELECT id FROM question_id)),
('costante', 1, (SELECT id FROM question_id));

-- DOMANDA 9
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Le invenzioni tecniche sono proteggibili tramite:', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('marchi', 0, (SELECT id FROM question_id)),
('copyright', 0, (SELECT id FROM question_id)),
('brevetti', 1, (SELECT id FROM question_id)),
('nessuna delle precedenti', 0, (SELECT id FROM question_id));

-- DOMANDA 10
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il Design Thinking', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('presena diversi modelli di analisi', 1, (SELECT id FROM question_id)),
('può essere applicato se nel team è presente un esperto di design', 0, (SELECT id FROM question_id)),
('si basa sulla minimizzazione di empatia col cliente per accelerare il processo di sviluppo prodotto', 0, (SELECT id FROM question_id)),
('tutte le precedenti', 0, (SELECT id FROM question_id));

-- DOMANDA 1
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('I requisiti per l’ottenimento di un brevetto sono', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Novità, non ovvietà e esclusività', 0, (SELECT id FROM question_id)),
('Novità, esclusività e replicabilità', 0, (SELECT id FROM question_id)),
('Novità, attività inventiva e applicabilità industriale', 1, (SELECT id FROM question_id)),
('Novità, applicabilità industriale ed esclusività', 0, (SELECT id FROM question_id));

-- DOMANDA 2
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Negli studi di innovazione, la curva ad S', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('distingue i settori ad alto contenuto tecnologico da quelli a basso contenuto tecnologico', 0, (SELECT id FROM question_id)),
('lega la performance di una tecnologia al tempo', 0, (SELECT id FROM question_id)),
('si percorre fin quando la tecnologia non raggiunge il suo limite tecnologico', 0, (SELECT id FROM question_id)),
('può essere rappresentata come una campana', 1, (SELECT id FROM question_id));

-- DOMANDA 3
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Un''innovazione radicale', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('identifica un''innovazione distante dalla commerciabilità', 0, (SELECT id FROM question_id)),
('è un concetto assoluto', 0, (SELECT id FROM question_id)),
('è legata al concetto di differenziazione', 1, (SELECT id FROM question_id)),
('è più economica', 0, (SELECT id FROM question_id));

-- DOMANDA 4
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Negli studi di diffusione dell’innovazione, il termine Chasm (Abisso) è utilizzato per indicare', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('la transizione dagli innovatori agli early adopters', 0, (SELECT id FROM question_id)),
('la transizione dagli early adopters alla maggioranza anticipataria', 1, (SELECT id FROM question_id)),
('la transizione dalla maggioranza anticipataria alla maggioranza ritardataria', 0, (SELECT id FROM question_id)),
('la transizione dalla maggioranza ritardataria ai ritardatari', 0, (SELECT id FROM question_id));

-- DOMANDA 5
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Un''innovazione modulare', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('non può essere di processo', 0, (SELECT id FROM question_id)),
('è più facilmente replicabile', 1, (SELECT id FROM question_id)),
('è concettualmente simile a innovazione marginale', 0, (SELECT id FROM question_id)),
('è un''innovazione di tipo tacito', 0, (SELECT id FROM question_id));

-- DOMANDA 6
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('L''acronimo TRL significa', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Technology Radical Level', 0, (SELECT id FROM question_id)),
('Technology Readiness Level', 1, (SELECT id FROM question_id)),
('True Readiness Level', 0, (SELECT id FROM question_id)),
('True Radical Level', 0, (SELECT id FROM question_id));

-- DOMANDA 7
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il Design Thinking mira alla definizione di una soluzione ideale incrociando le dimensioni di:', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('unicità, complessità e redditività', 0, (SELECT id FROM question_id)),
('desiderabilità, fattibilità e redditività', 1, (SELECT id FROM question_id)),
('fattibilità, complessità e desiderabilità', 0, (SELECT id FROM question_id)),
('unicità, fattibilità e desiderabilità', 0, (SELECT id FROM question_id));

-- DOMANDA 8
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il team di progetto nel processo di sviluppo nuovo prodotti deve essere caratterizzato da', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('tanti project manager che gestiscano le singole fasi del progetto', 0, (SELECT id FROM question_id)),
('una struttura di lungo termine per sviluppare più progetti', 0, (SELECT id FROM question_id)),
('omogeneità di esperienze per facilitare la risoluzione di eventuali problematiche', 0, (SELECT id FROM question_id)),
('interfunzionalità per collegare diverse aree dell''organizzazione', 1, (SELECT id FROM question_id));

-- DOMANDA 9
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('La struttura a matrice di un''organizzazione', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('può essere debole, equilibrata, forte', 1, (SELECT id FROM question_id)),
('unisce le caratteristiche della struttura funzionale e quella divisionale', 1, (SELECT id FROM question_id)),
('soffre di una difficile distribuzione delle responsabilità', 1, (SELECT id FROM question_id)),
('è una forma particolare di organizzazione nata in Europa', 0, (SELECT id FROM question_id));

-- DOMANDA 1
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Quale fra le seguenti affermazioni non è vera. L''innovazione', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('è un''invenzione con un maggiore grado di novità', 1, (SELECT id FROM question_id)),
('può riguardare un nuovo metodo di marketing', 0, (SELECT id FROM question_id)),
('crea valore per l''impresa', 0, (SELECT id FROM question_id)),
('può riguardare una nuova forma organizzativa', 0, (SELECT id FROM question_id));

-- DOMANDA 2
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('L''innovazione di processo', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('è alta nella fase fluida di sviluppo di un settore', 0, (SELECT id FROM question_id)),
('ha un andamento lineare crescente nel tempo di sviluppo di un settore', 0, (SELECT id FROM question_id)),
('è bassa nella fase fluida di sviluppo di un settore', 1, (SELECT id FROM question_id)),
('ha un andamento costante nel tempo di sviluppo di un settore', 0, (SELECT id FROM question_id));

-- DOMANDA 3
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Verganti ha suggerito che l''innovazione può essere di', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('prodotto/processo', 0, (SELECT id FROM question_id)),
('funzione/significato', 1, (SELECT id FROM question_id)),
('disruptive/sustaining', 0, (SELECT id FROM question_id)),
('radicale/incrementale', 0, (SELECT id FROM question_id));

-- DOMANDA 4
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('La maggioranza anticipataria rappresenta il _______ dei potenziali utilizzatori di un''innovazione', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('50%', 0, (SELECT id FROM question_id)),
('16%', 0, (SELECT id FROM question_id)),
('34%', 1, (SELECT id FROM question_id)),
('84%', 0, (SELECT id FROM question_id));

-- DOMANDA 5
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il first mover ha il seguente vantaggio sul follower:', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('reputazione', 1, (SELECT id FROM question_id)),
('sviluppo di infrastrutture', 0, (SELECT id FROM question_id)),
('domanda di mercato certa', 0, (SELECT id FROM question_id)),
('bassi costi', 0, (SELECT id FROM question_id));

-- DOMANDA 6
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Le imprese più a rischio quando un''innovazione viene introdotta sul mercato sono', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('le imprese startup che sviluppano una tecnologia differente', 0, (SELECT id FROM question_id)),
('le imprese startup perché non hanno la flessibilità di cambiare paradigma innovativo', 0, (SELECT id FROM question_id)),
('le imprese incumbent perché sono caratterizzate da inerzia organizzativa', 1, (SELECT id FROM question_id)),
('le imprese incumbet perché hanno collaborazioni con imprese che sviluppano innovazioni differenti', 0, (SELECT id FROM question_id));

-- DOMANDA 7
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('PERT', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('è una tecnica di gestione dei rischi di progetto', 0, (SELECT id FROM question_id)),
('è acronimo di Program Evaluation and Review Technique', 0, (SELECT id FROM question_id)),
('è stata sviluppata nel 1968', 0, (SELECT id FROM question_id)),
('Nessuna delle precedenti', 1, (SELECT id FROM question_id));

-- DOMANDA 8
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Un progetto di innovazione può essere organizzato nei seguenti modi:', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('con project manager leggero, pesante, a gruppo autonomo', 1, (SELECT id FROM question_id)),
('con organizzazione divisionale, funzionale, a matrice', 0, (SELECT id FROM question_id)),
('con organizzazione divisionale, funzionale, semi-divisionale', 0, (SELECT id FROM question_id)),
('con project manager leggero, pesante, semi-autonomo', 0, (SELECT id FROM question_id));

-- DOMANDA 9
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il PMBOK riconosce', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('5 gruppi di processi e 9 aree di conoscenza', 1, (SELECT id FROM question_id)),
('9 gruppi di processi e 5 aree di conoscenza', 0, (SELECT id FROM question_id)),
('14 aree di conoscenza', 0, (SELECT id FROM question_id)),
('14 aree di processi', 0, (SELECT id FROM question_id));

-- DOMANDA 1
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Le innovazioni di prodotto sono ____________________ delle innovazioni di processo', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('più facilmente imitabili', 1, (SELECT id FROM question_id)),
('meno facilmente imitabili', 0, (SELECT id FROM question_id)),
('meno codificabili', 0, (SELECT id FROM question_id)),
('più tacite', 0, (SELECT id FROM question_id));

-- DOMANDA 2
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Le forme esteriori sono proteggibili tramite', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('brevetti', 0, (SELECT id FROM question_id)),
('copyright', 0, (SELECT id FROM question_id)),
('design', 1, (SELECT id FROM question_id)),
('nessuna delle precedenti', 0, (SELECT id FROM question_id));

-- DOMANDA 3
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('I costi di brevettazione riguardano', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('costi di deposito', 0, (SELECT id FROM question_id)),
('costi di esame', 0, (SELECT id FROM question_id)),
('costi di mantenimento', 0, (SELECT id FROM question_id)),
('tutte le precedenti', 1, (SELECT id FROM question_id));

-- DOMANDA 4
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il segreto industriale è più facilmente applicabile del brevetto quando', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('l''ambito competitivo è ampio e frammentato', 1, (SELECT id FROM question_id)),
('è fondamentale fare utilizzo di licenze dell''invenzione da dare a terzi', 0, (SELECT id FROM question_id)),
('esiste un unico modo per risolvere il problema alla base dell''innovazione', 0, (SELECT id FROM question_id)),
('il settore di riferimento dell''invenzione è governato da un tessuto di tipo monopolistico', 0, (SELECT id FROM question_id));

-- DOMANDA 5
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('L''affermazione "L''innovazione è un processo di distruzione creatrice"', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('si riferisce alle innovazioni di significato', 0, (SELECT id FROM question_id)),
('significa che l''innovazione apre opportunità destinate a durare poco tempo', 0, (SELECT id FROM question_id)),
('avverte le imprese circa l''impossibilità di generare vantaggio competitivo', 0, (SELECT id FROM question_id)),
('è stata scritta da Shumpeter', 1, (SELECT id FROM question_id));

-- DOMANDA 6
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Le tecnologie', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('non sempre raggiungono il proprio limite', 1, (SELECT id FROM question_id)),
('seguono una retta che ne descrive il decadimento nel tempo', 0, (SELECT id FROM question_id)),
('sono il fine dell''innovazione', 0, (SELECT id FROM question_id)),
('tutte le precedenti', 0, (SELECT id FROM question_id));

-- DOMANDA 7
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('Il margine di scorrimento è', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('il massimo scorrimento che può avere un''attività rispettando i vincoli di inizio e fine del progetto', 0, (SELECT id FROM question_id)),
('il minimo scorrimento che può avere un''attività rispettando i vincoli di inizio e fine del progetto', 0, (SELECT id FROM question_id)),
('il massimo scorrimento che può avere un''attività rispettando i vincoli di inizio o fine dell''attività stessa', 1, (SELECT id FROM question_id)),
('il minimo scorrimento che può avere un''attività rispettando i vincoli di inizio o fine dell''attività stessa', 0, (SELECT id FROM question_id));

-- DOMANDA 8
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('WBS è acronimo di', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Work Before Structure', 0, (SELECT id FROM question_id)),
('Work Bottom-up Structure', 0, (SELECT id FROM question_id)),
('Work Breakdown Structure', 1, (SELECT id FROM question_id)),
('Working Break Scheduling', 0, (SELECT id FROM question_id));

-- DOMANDA 9
INSERT INTO questions (question, category_id, is_multiple_choice) 
VALUES ('L''analisi di settore', 3, 1);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('è sinonimo di analisi di mercato', 0, (SELECT id FROM question_id)),
('comprende l''analisi della competizione', 1, (SELECT id FROM question_id)),
('utilizza focus sessions per la raccolta di dati', 0, (SELECT id FROM question_id)),
('utilizza interviste per la raccolta di dati', 0, (SELECT id FROM question_id));
