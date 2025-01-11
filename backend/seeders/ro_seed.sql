------------------------------------------------------------------------------
-- @Programmazione Matematica
------------------------------------------------------------------------------

-- DOMANDA 1
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Dato un insieme F, un intorno è',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. L''insieme di tutti i sottoinsiemi di F', 0, (SELECT id FROM question_id)),
('B. L''insieme dei punti di F a distanza minore di epsilon da un punto x di F', 0, (SELECT id FROM question_id)),
('C. Una funzione N: F -> 2^F', 1, (SELECT id FROM question_id)),
('D. Una combinazione convessa di due punti x e y di F', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 2
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Si consideri un problema di ottimizzazione (F,d) ed un intorno N. La proprietà che se un punto f di F è localmente ottimo rispetto ad N allora f è l''ottimo assoluto implica',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. che N è un intorno esatto', 1, (SELECT id FROM question_id)),
('B. che N è un intorno euclideo', 0, (SELECT id FROM question_id)),
('C. che N è un intorno non euclideo', 0, (SELECT id FROM question_id)),
('D. nessuna di queste caratterizzazioni', 0, (SELECT id FROM question_id)),
('E. che N è un intorno convesso', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 3
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Facendo variare lambda fra 0 e 1, la combinazione convessa di due punti x ed y descrive',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. tutti i punti della semiretta che origina in x e passa per y', 0, (SELECT id FROM question_id)),
('B. tutti i punti della retta passante per x ed y', 0, (SELECT id FROM question_id)),
('C. tutti i punti del segmento [x,y]', 1, (SELECT id FROM question_id)),
('D. il punto centrale del segmento [x,y]', 0, (SELECT id FROM question_id)),
('E. tutti i punti della semiretta che origina in y e passa per x', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 4
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Data una funzione f convessa su un insieme S convesso, la corda che unisce due punti della funzione:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. coincide con un flesso della funzione.', 0, (SELECT id FROM question_id)),
('B. sta al di sotto della funzione ma non coincide mai con essa.', 0, (SELECT id FROM question_id)),
('C. sta al di sopra della funzione ma non coincide mai con essa.', 0, (SELECT id FROM question_id)),
('D. sta al di sopra della funzione o è con essa coincidente.', 1, (SELECT id FROM question_id)),
('E. sta al di sotto della funzione o è con essa coincidente.', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 5
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Dati una funzione convessa definita su un insieme S convesso ed una soglia t, il sottoinsieme di punti x di S in cui f(x) <= t :',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. È concavo', 0, (SELECT id FROM question_id)),
('B. È un intorno euclideo', 0, (SELECT id FROM question_id)),
('C. È convesso', 1, (SELECT id FROM question_id)),
('D. È un intorno esatto', 0, (SELECT id FROM question_id)),
('E. È il complemento di S', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 6
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Sia dato un problema di programmazione convessa. Si ha allora che un ottimo locale rispetto alla distanza euclidea',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Non gode di particolari proprietà', 0, (SELECT id FROM question_id)),
('B. È spesso un ottimo globale', 0, (SELECT id FROM question_id)),
('C. Può essere un ottimo globale se soddisfa determinate condizioni', 0, (SELECT id FROM question_id)),
('D. È sempre un ottimo globale', 1, (SELECT id FROM question_id)),
('E. Coincide con l''origine', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 7
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Si considerino una funzione f convessa definita su un insieme S convesso ed un valore di soglia q. Si ha allora che il sottoinsieme di punti x di S in cui f(x) <= q',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. È un intorno esatto', 0, (SELECT id FROM question_id)),
('B. È il complemento di S', 0, (SELECT id FROM question_id)),
('C. Coincide con S', 0, (SELECT id FROM question_id)),
('D. È convesso', 1, (SELECT id FROM question_id)),
('E. È concavo', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 8
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Si consideri una famiglia di insiemi convessi. Vale che',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. La loro unione è sempre un insieme convesso', 0, (SELECT id FROM question_id)),
('B. La loro intersezione è un insieme convesso solo se valgono opportune condizioni', 0, (SELECT id FROM question_id)),
('C. La loro unione è sempre un insieme concavo', 0, (SELECT id FROM question_id)),
('D. La loro intersezione è sempre un insieme concavo', 0, (SELECT id FROM question_id)),
('E. La loro intersezione è sempre un insieme convesso', 1, (SELECT id FROM question_id));

-- Correct answer: E


------------------------------------------------------------------------------
-- @Programmazione Lineare
------------------------------------------------------------------------------

-- DOMANDA 9
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Un insieme di colonne di una matrice intera A m x n non è linearmente indipendente se:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. la loro combinazione lineare che produce il vettore nullo ha tutti i coefficienti nulli', 0, (SELECT id FROM question_id)),
('B. ogni colonna può essere espressa come combinazione lineare delle altre', 1, (SELECT id FROM question_id)),
('C. la sottomatrice corrispondente non è singolare', 0, (SELECT id FROM question_id)),
('D. il determinante della matrice corrispondente è diverso da zero', 0, (SELECT id FROM question_id)),
('E. nessuna colonna può essere espressa come combinazione lineare delle altre', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 10
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Un insieme di m colonne di una matrice intera A m x n è linearmente indipendente se:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. la sottomatrice corrispondente è singolare.', 0, (SELECT id FROM question_id)),
('B. il determinante della matrice corrispondente è nullo.', 0, (SELECT id FROM question_id)),
('C. al massimo una colonna può essere espressa come combinazione lineare delle altre.', 0, (SELECT id FROM question_id)),
('D. una loro combinazione lineare con coefficienti non tutti nulli può produrre il vettore nullo.', 0, (SELECT id FROM question_id)),
('E. nessuna colonna può essere espressa come combinazione lineare delle altre.', 1, (SELECT id FROM question_id));

-- Correct answer: E

-- DOMANDA 11
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Quale di queste non è un''assunzione che l''algoritmo del Simplesso deve verificare prima di poter operare?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Si considera sempre la forma standard con m<n.', 0, (SELECT id FROM question_id)),
('B. La regione ammissibile F non è vuota.', 0, (SELECT id FROM question_id)),
('C. La matrice A contiene m colonne linearmente indipendenti, ha cioè rango m.', 0, (SELECT id FROM question_id)),
('D. La SBA iniziale non deve essere degenere.', 1, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 12
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Una variabile libera in segno può essere sostituita equivalentemente da:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. la differenza fra una variabile non positiva ed una non negativa.', 0, (SELECT id FROM question_id)),
('B. la differenza fra due variabili non negative.', 1, (SELECT id FROM question_id)),
('C. la somma di due variabili non positive.', 0, (SELECT id FROM question_id)),
('D. la somma di due variabili non negative.', 0, (SELECT id FROM question_id)),
('E. la differenza fra una variabile non negativa e una non positiva.', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 13
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Un vincolo espresso come Ax = b in forma standard equivale, in forma canonica, a',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Ax <=b, Ax >=b', 1, (SELECT id FROM question_id)),
('B. Ax < b', 0, (SELECT id FROM question_id)),
('C. Ax > b', 0, (SELECT id FROM question_id)),
('D. Ax >= b, Ax < b', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 14
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Dati un vettore di parametri a ed un vettore di incognite x, una disequazione della forma a''x <= b è equivalente a',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. a''x <= b, a''x + s = b, s >= 0.', 0, (SELECT id FROM question_id)),
('B. a''x - s = b, s >= 0.', 0, (SELECT id FROM question_id)),
('C. a''x + s = b, s <= 0.', 0, (SELECT id FROM question_id)),
('D. a''x + s = b, s >= 0.', 1, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 15
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Si consideri un sistema di equazioni lineari della forma Ax = b, con A matrice m x n di rango m. Il sistema ha',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. infinite soluzioni se m = n', 0, (SELECT id FROM question_id)),
('B. infinite soluzioni se m > n', 0, (SELECT id FROM question_id)),
('C. una sola soluzione se m = n', 0, (SELECT id FROM question_id)),
('D. una sola soluzione se m > n', 0, (SELECT id FROM question_id)),
('E. nessuna delle precedenti', 1, (SELECT id FROM question_id));

-- Correct answer: E

-- DOMANDA 16
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Cosa è una base di una matrice A?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Un sottoinsieme di colonne di A.', 0, (SELECT id FROM question_id)),
('B. Un sottoinsieme di colonne di A linearmente indipendenti.', 0, (SELECT id FROM question_id)),
('C. Un sottoinsieme di m colonne di A (m rango di A).', 0, (SELECT id FROM question_id)),
('D. Un sottoinsieme di m colonne di A linearmente indipendenti (m rango di A).', 1, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 17
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Data una matrice intera A m x n, una sua base è costituita da',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. un insieme di m colonne', 0, (SELECT id FROM question_id)),
('B. un insieme di m colonne linearmente indipendenti', 1, (SELECT id FROM question_id)),
('C. un insieme di m colonne la cui matrice quadrata corrispondente è singolare', 0, (SELECT id FROM question_id)),
('D. un insieme di m colonne linearmente dipendenti', 0, (SELECT id FROM question_id)),
('E. nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 18
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Una soluzione base corrispondente ad una sottomatrice base B di una matrice A m x n si ottiene:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. azzerando tutte le variabili e risolvendo il sistema risultante', 0, (SELECT id FROM question_id)),
('B. azzerando le variabili base e risolvendo il sistema risultante', 0, (SELECT id FROM question_id)),
('C. azzerando le variabili fuori base e risolvendo il sistema risultante', 1, (SELECT id FROM question_id)),
('D. dando un valore non nullo alle variabili fuori base e risolvendo il sistema risultante', 0, (SELECT id FROM question_id)),
('E. nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 19
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Quale tra le seguenti è la definizione di politopo?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Regione in cui la combinazione convessa di ciascun punto appartiene sempre alla regione.', 0, (SELECT id FROM question_id)),
('B. Intersezione di un numero finito di semispazi.', 1, (SELECT id FROM question_id)),
('C. Combinazione convessa di un numero finito di vertici.', 0, (SELECT id FROM question_id)),
('D. Regione ammissibile che ha come punti ottimi i vertici.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 20
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Sia P un politopo, H un generico iperpiano, HS uno dei due semispazi generati da H. Insieme dei punti f = intersezione tra P e HS è detta:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Politopo convesso ammissibile', 0, (SELECT id FROM question_id)),
('B. Regione ammissibile', 0, (SELECT id FROM question_id)),
('C. Faccia del politopo se f non vuoto e contenuto in H', 1, (SELECT id FROM question_id)),
('D. Insieme di punti ottimi contenuti in H', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 21
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Relativamente all''affermazione ''ogni punto di un politopo è combinazione convessa dei vertici'':',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Vale solo in caso di vertici ottimi.', 0, (SELECT id FROM question_id)),
('B. E'' corretta.', 1, (SELECT id FROM question_id)),
('C. Vale solo se la combinazione è stretta.', 0, (SELECT id FROM question_id)),
('D. E'' errata.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 22
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'La combinazione convessa stretta di due punti distinti x ed y di un politopo convesso è:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. un vertice del politopo.', 0, (SELECT id FROM question_id)),
('B. un punto del politopo non coincidente con un vertice.', 1, (SELECT id FROM question_id)),
('C. il punto centrale del politopo.', 0, (SELECT id FROM question_id)),
('D. un punto esterno al politopo.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 23
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Dato un politopo P definito dai vincoli di un LP, condizione necessaria e sufficiente perché un punto sia un vertice è che:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. La sua combinazione convessa con un qualunque altro punto del politopo appartenga ancora al politopo.', 0, (SELECT id FROM question_id)),
('B. La relativa soluzione x abbia componenti positivi.', 0, (SELECT id FROM question_id)),
('C. Il politopo sia limitato e non vuoto.', 0, (SELECT id FROM question_id)),
('D. La corrispondente soluzione x sia una soluzione base ammissibile.', 1, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 24
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Quale tra le seguenti affermazioni è errata?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Ogni punto del politopo è combinazione convessa dei vertici.', 0, (SELECT id FROM question_id)),
('B. Ogni combinazione convessa dei vertici è un punto del politopo.', 0, (SELECT id FROM question_id)),
('C. Un vertice è combinazione convessa stretta di due punti distinti del politopo.', 1, (SELECT id FROM question_id)),
('D. Un vertice non è combinazione convessa stretta di due punti distinti del politopo.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 25
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Quale tra queste affermazioni è errata?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. L''intersezione di un numero finito di iperpiani è un politopo (convesso).', 1, (SELECT id FROM question_id)),
('B. La dimensione di un politopo è la minima dimensione di uno spazio che lo può contenere.', 0, (SELECT id FROM question_id)),
('C. Una faccia di dimensione 1 viene detta spigolo.', 0, (SELECT id FROM question_id)),
('D. Un vertice non è combinazione convessa stretta di due punti distinti del politopo.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 26
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Dato il politopo definito dai vincoli di un LP, una combinazione convessa di vertici ottimi è:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. ottima solo se la combinazione convessa è stretta', 0, (SELECT id FROM question_id)),
('B. non ottima', 0, (SELECT id FROM question_id)),
('C. ottima sotto particolari condizioni', 0, (SELECT id FROM question_id)),
('D. sempre ottima', 1, (SELECT id FROM question_id)),
('E. nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 27
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Una SBA si dice degenere se:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Contiene più di m-n variabili con valore zero.', 0, (SELECT id FROM question_id)),
('B. Contiene più di n-m variabili con valore zero.', 1, (SELECT id FROM question_id)),
('C. Esistono fuori base variabili con valore zero.', 0, (SELECT id FROM question_id)),
('D. Non c''è nessuna variabile con valore zero.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 28
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Se due basi producono la stessa soluzione base ammissibile x, allora x contiene:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. meno di n zeri.', 0, (SELECT id FROM question_id)),
('B. n-m zeri.', 0, (SELECT id FROM question_id)),
('C. meno di n-m zeri.', 0, (SELECT id FROM question_id)),
('D. più di m zeri.', 0, (SELECT id FROM question_id)),
('E. più di n-m zeri.', 1, (SELECT id FROM question_id));

-- Correct answer: E

-- DOMANDA 29
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Quale di queste affermazioni è errata?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Un insieme S si dice convesso se dati due qualunque punti di S, la combinazione convessa di questi appartiene ancora ad S.', 0, (SELECT id FROM question_id)),
('B. Una funzione c si dice convessa su un insieme convesso S se il valore della funzione nella combinazione convessa di due qualunque punti di S è maggiore o uguale alla combinazione convessa del valore della funzione nei due punti.', 1, (SELECT id FROM question_id)),
('C. Dato un qualunque problema LP, esiste sempre un vertice ottimo.', 0, (SELECT id FROM question_id)),
('D. Se due basi distinte producono la stessa SBA x, allora x è degenere.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 30
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Quale tra queste affermazioni è errata?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Ogni combinazione convessa di vertici ottimi è ottima.', 0, (SELECT id FROM question_id)),
('B. Dato un LP non è detto che esista un punto ottimo; se esiste allora questo è un vertice.', 1, (SELECT id FROM question_id)),
('C. L''insieme dei vincoli di un LP è un politopo.', 0, (SELECT id FROM question_id)),
('D. La regione ammissibile di un LP è un politopo.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: B


------------------------------------------------------------------------------
-- @Algoritmo del Simplesso
------------------------------------------------------------------------------

-- DOMANDA 31
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'La definizione di politopo (convesso) è:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Intersezione di un numero qualunque di semispazi', 0, (SELECT id FROM question_id)),
('B. Intersezione di un numero finito di semipiani purchè limitata', 0, (SELECT id FROM question_id)),
('C. Intersezione di un numero qualsiasi di semipiani', 0, (SELECT id FROM question_id)),
('D. Intersezione di un numero finito di semipiani purchè limitata e non vuota', 1, (SELECT id FROM question_id)),
('E. Intersezione di un numero finito si semipiani purchè non vuota', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 32
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Sia B una base di un sistema Ax=b. Qualunque colonna non appartentente a B può essere espressa come:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Combinazione lineare delle colonne di B, con coefficienti non negativi', 0, (SELECT id FROM question_id)),
('B. Combinazione convessa delle colonne di B, con coefficienti positivi', 0, (SELECT id FROM question_id)),
('C. Combinazione convessa delle colonne di B, con coefficienti non negativi', 0, (SELECT id FROM question_id)),
('D. Combinazione lineare delle colonne di B, con coefficienti positivi', 0, (SELECT id FROM question_id)),
('E. combinazione lineare delle colonne di B, con coefficienti di segno qualunque', 1, (SELECT id FROM question_id));

-- Correct answer: E

-- DOMANDA 33
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'In un politopo (convesso)  di dimensione d, uno spigolo è',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Una faccia di dimensione d - 1', 0, (SELECT id FROM question_id)),
('B. Una faccia di dimensione 0', 0, (SELECT id FROM question_id)),
('C. Una faccia di dimensione 1', 1, (SELECT id FROM question_id)),
('D. Una faccia di dimensione d', 0, (SELECT id FROM question_id)),
('E. Una faccia di dimensione d + 1', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 34
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Se yij è minore o uguale a 0 per ogni i, in relazione a theta, cosa succede?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Viene violata assunzione 0 (forma standard con m<n).', 0, (SELECT id FROM question_id)),
('B. Viene violata assunzione 1 (A di rango m).', 0, (SELECT id FROM question_id)),
('C. Viene violata assunzione 2 (F non vuota).', 0, (SELECT id FROM question_id)),
('D. Viene violata assunzione 3 (F limitata in direzione di decrescenza della funzione obiettivo).', 1, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 35
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Cosa significa se nel calcolo di theta max c''è un caso di parità?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. La soluzione attuale era degenere.', 0, (SELECT id FROM question_id)),
('B. La nuova soluzione è degenere.', 1, (SELECT id FROM question_id)),
('C. La nuova soluzione avrà costo maggiore.', 0, (SELECT id FROM question_id)),
('D. Niente di particolare, si prosegue scegliendo l''indice minimo.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 36
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'In un tableau del simplesso primale, gli elementi della colonna 0 righe da 1 a m:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. contengono i valori attuali delle sole variabili base', 1, (SELECT id FROM question_id)),
('B. sono tutti nulli', 0, (SELECT id FROM question_id)),
('C. contengono i valori attuali di tutte le variabili', 0, (SELECT id FROM question_id)),
('D. contengono i costi relativi', 0, (SELECT id FROM question_id)),
('E. contengono i valori ottimi delle sole variabili base', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 37
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Cosa contiene il tableau a qualunque iterazione?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Rappresentazione compatta dei coefficienti del sistema AX = b.', 1, (SELECT id FROM question_id)),
('B. Informazioni sui costi e valori delle soluzioni di base ammissibili.', 0, (SELECT id FROM question_id)),
('C. Rappresentazione compatta dei vincoli di un problema di LP.', 0, (SELECT id FROM question_id)),
('D. Rappresentazione compatta dei valori delle soluzioni.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 38
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Quale colonna conviene far entrare in base in un cambiamento di base?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Colonna con tutti elementi positivi.', 0, (SELECT id FROM question_id)),
('B. Colonna con costo relativo positivo.', 0, (SELECT id FROM question_id)),
('C. Colonna con costo relativo negativo.', 1, (SELECT id FROM question_id)),
('D. Colonna con tutti elementi negativi.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 39
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'In un tableau del simplesso primale, gli elementi della riga 0 (colonne da 1 a n):',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. sono tutti nulli.', 0, (SELECT id FROM question_id)),
('B. possono avere segno qualunque.', 1, (SELECT id FROM question_id)),
('C. sono tutti non negativi.', 0, (SELECT id FROM question_id)),
('D. sono tutti positivi o nulli.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 40
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Cosa contiene un tableau nella posizione di riga 0 e colonna 0?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Costo relativo della colonna 0.', 0, (SELECT id FROM question_id)),
('B. Il valore z0 della soluzione base attuale.', 0, (SELECT id FROM question_id)),
('C. Il profitto della colonna 0.', 0, (SELECT id FROM question_id)),
('D. L''opposto di z0 della soluzione base attuale.', 1, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 41
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Cosa dice il criterio di ottimalità?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Se il costo relativo j-esimo è maggiore o uguale a 0 per ogni j, allora la soluzione attuale è ottima.', 1, (SELECT id FROM question_id)),
('B. Se il costo relativo j-esimo è positivo per ogni j, allora la soluzione attuale è ottima.', 0, (SELECT id FROM question_id)),
('C. Se i valori delle variabili base sono tutti positivi o nulli, allora la soluzione attuale è ottima.', 0, (SELECT id FROM question_id)),
('D. Se il valore z0 è negativo, allora la soluzione attuale è ottima.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 42
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Cosa afferma la regola di Dantzig?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Entra in base la colonna Aj con il costo Cj più negativo.', 1, (SELECT id FROM question_id)),
('B. Entra in base la colonna Aj di indice minimo con costo Cj negativo.', 0, (SELECT id FROM question_id)),
('C. Entra in base la prima colonna Aj con costo Cj negativo. In caso di parità, esce dalla base la colonna Aj di indice minimo.', 0, (SELECT id FROM question_id)),
('D. Esce dalla base la colonna Aj con il costo Cj più negativo.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 43
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Nell''operazione di pivoting del simplesso primale, in caso di parità nella scelta del pivot, la nuova soluzione base:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. può essere peggiore della soluzione base attuale.', 0, (SELECT id FROM question_id)),
('B. coincide sempre con la soluzione base attuale.', 0, (SELECT id FROM question_id)),
('C. non è mai degenere.', 0, (SELECT id FROM question_id)),
('D. può essere non ammissibile.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 1, (SELECT id FROM question_id));

-- Correct answer: E

-- DOMANDA 44
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Nell''algoritmo del simplesso primale, utilizzare ad ogni iterazione la regola di Dantzig:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. non garantisce nulla', 1, (SELECT id FROM question_id)),
('B. garantisce la convergenza dell''algoritmo nel numero minimo di iterazioni', 0, (SELECT id FROM question_id)),
('C. garantisce la convergenza dell''algoritmo', 0, (SELECT id FROM question_id)),
('D. garantisce il massimo decremento locale del valore della soluzione', 0, (SELECT id FROM question_id)),
('E. nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 45
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Sia v il vertice del politopo corrispondente alla base attuale B. Se B è degenere, un''operazione di pivoting del simplesso primale sposta la soluzione ad un vertice, che è:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. sempre diverso da v.', 0, (SELECT id FROM question_id)),
('B. diverso da v oppure coincidente con v, dipende dal tableau attuale.', 1, (SELECT id FROM question_id)),
('C. coincidente con v se il determinante di B è nullo.', 0, (SELECT id FROM question_id)),
('D. sempre coincidente con v.', 0, (SELECT id FROM question_id)),
('E. diverso da v purché il determinante di B sia positivo.', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 46
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Sia v il vertice del politopo corrispondente alla base attuale B. Se B non è degenere, un''operazione di pivoting del simplesso primale sposta la soluzione ad un vertice che è:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. diverso da v oppure coincidente da v, non si può dire', 0, (SELECT id FROM question_id)),
('B. coincidente con v se il determinante di B è nullo', 0, (SELECT id FROM question_id)),
('C. sempre diverso da v', 1, (SELECT id FROM question_id)),
('D. diverso da v purchè il determinante di B sia positivo', 0, (SELECT id FROM question_id)),
('E. coincidente con v se il determinante di B è non negativo', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 47
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'In cosa consiste la Fase 1 dell''algoritmo del Simplesso?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Eliminare le variabili artificiali.', 0, (SELECT id FROM question_id)),
('B. Minimizzare la funzione obiettivo originale.', 0, (SELECT id FROM question_id)),
('C. Determinare una SBA iniziale.', 1, (SELECT id FROM question_id)),
('D. Azzerare i costi relativi originali.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 48
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Nel metodo delle due fasi, se al termine della fase 1 la soluzione ha valore negativo:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. si è ottenuta una soluzione base ammissibile per il problema originale.', 0, (SELECT id FROM question_id)),
('B. significa che la soluzione ottima è illimitata.', 0, (SELECT id FROM question_id)),
('C. significa che il problema originale è impossibile.', 0, (SELECT id FROM question_id)),
('D. si è trovata la soluzione ottima del problema originale.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 1, (SELECT id FROM question_id));

-- Correct answer: E

-- DOMANDA 49
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Se la soluzione del problema artificiale della fase 1 del simplesso ha valore nullo:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. E'' sempre possibile proseguire con la fase 2, a patto di eliminare le variabili artificiali, sostituire la funzione obiettivo con quella del costo originale e azzerare i costi relativi in corrispondenza delle basi o ridurre la dimensione della base.', 1, (SELECT id FROM question_id)),
('B. Non è detto che sia sempre possibile proseguire con la fase 2.', 0, (SELECT id FROM question_id)),
('C. Si prosegue con la fase 2 senza nessun tipo di operazione preliminare.', 0, (SELECT id FROM question_id)),
('D. Il problema originale non ha soluzione ammissibile.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 50
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Cosa significa se la soluzione del problema artificiale ha valore positivo?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Violata assunzione 0 (forma standard con m<n).', 0, (SELECT id FROM question_id)),
('B. Violata assunzione 1 (A di rango m).', 0, (SELECT id FROM question_id)),
('C. Violata assunzione 2 (F non vuota).', 1, (SELECT id FROM question_id)),
('D. Violata assunzione 3 (F limitata in direzione di decrescenza della funzione obiettivo).', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 51
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Nel metodo delle due fasi, se al termine della fase 1 la soluzione ha valore positivo',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. significa che la soluzione ottima è illimitata', 0, (SELECT id FROM question_id)),
('B. sotto determinate condizioni si è ottenuta una soluzione base ammissibile per il problema originale', 0, (SELECT id FROM question_id)),
('C. si è trovata la soluzione ottima del problema originale', 0, (SELECT id FROM question_id)),
('D. si è ottenuta una soluzione base ammissibile per il problema originale', 0, (SELECT id FROM question_id)),
('E. significa che il problema è impossibile', 1, (SELECT id FROM question_id));

-- Correct answer: E

-- DOMANDA 52
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Se un tableau del simplesso primale corrisponde alla soluzione ottima:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. gli elementi della riga 0 sono tutti non negativi.', 0, (SELECT id FROM question_id)),
('B. gli elementi della colonna 0 sono tutti non negativi.', 0, (SELECT id FROM question_id)),
('C. gli elementi della riga 0, colonne da 1 a n, sono tutti positivi.', 0, (SELECT id FROM question_id)),
('D. gli elementi della riga 0, colonne da 1 a n, sono tutti non negativi.', 1, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 53
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Si consideri un tableau dell''algoritmo del simplesso primale. I costi relativi si trovano:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. In nessuna di queste posizioni', 0, (SELECT id FROM question_id)),
('B. Nella riga 0, nelle colonne corrispondenti alla base', 0, (SELECT id FROM question_id)),
('C. Nella riga 0, nelle colonne non corrispondenti alla base', 1, (SELECT id FROM question_id)),
('D. Nella colonna 0, nelle righe corrispondenti alla base', 0, (SELECT id FROM question_id)),
('E. Nella colonna 0, nelle righe non corrispondenti alla base', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 54
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Si consideri una sottomatrice B di ordine m di una matrice A m x n. La soluzione base corrispondente a B:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. è ammissibile per il corrispondente problema in forma standard solo se x = 0 per ogni variabile non base', 0, (SELECT id FROM question_id)),
('B. è sempre ammissibile per il corrispondene problema in forma standard', 0, (SELECT id FROM question_id)),
('C. Non è mai ammissibile per il corrispondente problema in forma standard', 0, (SELECT id FROM question_id)),
('D. è ammissibile per il corrispondente problema in forma standard solo se x >= 0', 1, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 55
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Si consideri un tableau dell''algoritmo del simplesso primale. Gli elementi della riga 0 corrispondenti alle colonne della base',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Nessuna di queste', 0, (SELECT id FROM question_id)),
('B. Possono avere segno qualunque', 0, (SELECT id FROM question_id)),
('C. Sono tutti nulli', 1, (SELECT id FROM question_id)),
('D. Contengono i costi relativi', 0, (SELECT id FROM question_id)),
('E. Valgono tutti 1', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 56
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Sia A_j una colonna corrispondente ad un costo relativo negativo nell''algoritmo del simplesso primale. Se tutti i coefficienti della colonna sono negativi o nulli, ciò implica che:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Il problema ha soluzione illimitata', 1, (SELECT id FROM question_id)),
('B. Il sistema Ax = b è ridondante', 0, (SELECT id FROM question_id)),
('C. Nessuna di queste', 0, (SELECT id FROM question_id)),
('D. La soluzione attuale è ottima', 0, (SELECT id FROM question_id)),
('E. La regione ammissibile è vuota', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 57
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Si consideri un tableau dell''algoritmo del simplesso primale. Il costo relativo di una variabile fuori base fornisce:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. La diminuzione unitaria del valore della soluzione se tale variabile entra in base', 1, (SELECT id FROM question_id)),
('B. La variazione unitaria del valore della soluzione se tale variabile esce dalla base', 0, (SELECT id FROM question_id)),
('C. La diminuzione unitaria del valore della soluzione se tale variabile esce dalla base', 0, (SELECT id FROM question_id)),
('D. La variazione unitaria del valore della soluzione se tale variabile entra in base', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 58
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Se al termine della Fase 1 dell''algoritmo del simplesso la soluzione vale 0 ma ci sono variabili artificiali in base',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Si è trovata la soluzione ottima del problema originale', 0, (SELECT id FROM question_id)),
('B. Significa che il problema originale è impossibile', 0, (SELECT id FROM question_id)),
('C. Significa che la soluzione ottima è illimitata', 0, (SELECT id FROM question_id)),
('D. Significa che il sistema dei vincoli del problema originale è ridondante', 0, (SELECT id FROM question_id)),
('E. Non di può dire, occorrono ulteriori iterazioni', 1, (SELECT id FROM question_id));

-- Correct answer: E


------------------------------------------------------------------------------
-- @Dualità
------------------------------------------------------------------------------

-- DOMANDA 59
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Ad una variabile primale non negativa corrisponde',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. nessuna di queste', 0, (SELECT id FROM question_id)),
('B. un vincolo duale della forma pi''a^ <= c', 1, (SELECT id FROM question_id)),
('C. un vincolo duale nella forma pi''a^ = c', 0, (SELECT id FROM question_id)),
('D. una variabile duale non negativa', 0, (SELECT id FROM question_id)),
('E. una variabile duale libera (non ristretta in segno)', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 60
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Quale tra queste affermazioni è falsa rispetto ad una corrispondenza primale-duale?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Ai costi corrispondono condizioni su variabili e viceversa.', 0, (SELECT id FROM question_id)),
('B. I vincoli sono dati dalle righe di A per il primale, dalle colonne di A per il duale.', 0, (SELECT id FROM question_id)),
('C. Ai costi corrispondono i termini noti e viceversa.', 1, (SELECT id FROM question_id)),
('D. Ad un vincolo corrisponde una condizione su una variabile e viceversa.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 61
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Se un problema di programmazione lineare (primale) ha soluzione ottima finita, allora:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Il suo duale non è detto che abbia soluzione ottima finita.', 0, (SELECT id FROM question_id)),
('B. Anche il suo duale ha soluzione ottima finita e i valori delle soluzioni coincidono.', 1, (SELECT id FROM question_id)),
('C. Anche il duale ha soluzione ottima finita, ma non è detto che i valori delle soluzioni coincidano.', 0, (SELECT id FROM question_id)),
('D. Anche il duale ha soluzione ottima finita, ma i valori delle due soluzioni non coincidono.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 62
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Quale può essere una possibile coppia di problemi primale-duale?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Primale ottimo finito / Duale illimitato.', 0, (SELECT id FROM question_id)),
('B. Primale Illimitato / Duale Illimitato.', 0, (SELECT id FROM question_id)),
('C. Primale impossibile / Duale impossibile.', 1, (SELECT id FROM question_id)),
('D. Primale ottimo finito / Duale impossibile.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 63
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'La situazione \"primale illimitato\" e corrispondente \"duale illimitato\":',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. dipende dal gradiente della funzione obiettivo del primale.', 0, (SELECT id FROM question_id)),
('B. non può mai verificarsi.', 1, (SELECT id FROM question_id)),
('C. può verificarsi sotto determinate condizioni.', 0, (SELECT id FROM question_id)),
('D. dipende dai gradienti delle due funzioni obiettivo.', 0, (SELECT id FROM question_id)),
('E. si verifica sempre.', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 64
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Quando un primale è illimitato, la situazione \"corrispondente duale impossibile\":',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. dipende dai gradienti delle due funzioni obiettivo', 0, (SELECT id FROM question_id)),
('B. non può mai verificarsi', 0, (SELECT id FROM question_id)),
('C. può verificarsi sotto determinate condizioni', 0, (SELECT id FROM question_id)),
('D. dipende dal gradiente della funzione obiettivo', 0, (SELECT id FROM question_id)),
('E. si verifica sempre', 1, (SELECT id FROM question_id));

-- Correct answer: E

-- DOMANDA 65
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Il lemma di Farkas:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Ha colto con grande anticipo l''essenza della dualità.', 1, (SELECT id FROM question_id)),
('B. Ha colto con grande anticipo l''essenza della programmazione intera.', 0, (SELECT id FROM question_id)),
('C. Offre una solida dimostrazione sull''efficienza dell''algoritmo del simplesso.', 0, (SELECT id FROM question_id)),
('D. Identifica la relazione tra l''ammissibilità del primale e l''impossibilità del duale.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 66
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Il teorema degli scarti complementari afferma:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Per ogni i ad 1 a m, l''i-esima variabile duale è nulla o l''i-esimo vincolo primale è soddisfatto con uguaglianza.', 1, (SELECT id FROM question_id)),
('B. Per ogni j da 1 a n, il j-esimo vincolo primale deve essere soddisfatto con uguaglianza o la j-esima variabile duale deve essere nulla.', 0, (SELECT id FROM question_id)),
('C. per ogni i da 1 a m, l''i-esima variabile primale è nulla o l''i-esimo vincolo duale è soddisfatto con uguaglianza.', 0, (SELECT id FROM question_id)),
('D. Per ogni j da 1 a n, i j-esimi vincoli primali e duali devono essere soddisfatti con uguaglianza.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 67
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'In un problema di programmazione lineare con m vincoli ed n variabili, le condizioni di ortogonalità (complementary slackness)',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. sono m-n.', 0, (SELECT id FROM question_id)),
('B. sono m+n.', 1, (SELECT id FROM question_id)),
('C. sono m.', 0, (SELECT id FROM question_id)),
('D. sono m*n.', 0, (SELECT id FROM question_id)),
('E. sono n.', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 68
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Le condizioni di ortogonalità (complementary slackness) di una coppia primale-duale garantiscono:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. l''ammissibilità di due soluzioni, una primale e una duale', 0, (SELECT id FROM question_id)),
('B. l''ottimalità di due soluzioni ammissibili, una primale e una duale', 1, (SELECT id FROM question_id)),
('C. l''ottimalità di due soluzioni, una primale e una duale, anche se non ammissibili', 0, (SELECT id FROM question_id)),
('D. l''ottimalità di una soluzione primale e del suo complemento', 0, (SELECT id FROM question_id)),
('E. nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 69
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'In un tableau del simplesso duale, gli elementi della riga 0 (colonna da 1 a n):',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. sono tutti positivi o nulli.', 1, (SELECT id FROM question_id)),
('B. sono tutti positivi.', 0, (SELECT id FROM question_id)),
('C. sono tutti negativi.', 0, (SELECT id FROM question_id)),
('D. sono tutti nulli.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 70
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'In un tableau del simplesso duale, i costi relativi si trovano:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. nella riga 0, colonne corrispondenti alla base', 0, (SELECT id FROM question_id)),
('B. nella riga 0, colonne non corrispondenti alla base', 1, (SELECT id FROM question_id)),
('C. nella colonna 0, righe non corrispondenti alla base', 0, (SELECT id FROM question_id)),
('D. in nessuna di queste posizioni', 0, (SELECT id FROM question_id)),
('E. nella colonna 0, nelle righe corrispondenti alla base', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 71
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Nell''algoritmo del simplesso duale:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Scegliamo una riga i >= 1, corrispondente ad un yi0 frazionario', 0, (SELECT id FROM question_id)),
('B. Il pivoting deve annullare la yi0 scelta', 0, (SELECT id FROM question_id)),
('C. Si inizia con una base ammissibile per il primale ma non per il duale', 0, (SELECT id FROM question_id)),
('D. La scelta del pivot garantisce il minimo aumento del valore della soluzione', 1, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 72
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'La scelta del pivot del simplesso duale viene determinata da:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. un minimo tra rapporti di valore positivo', 0, (SELECT id FROM question_id)),
('B. un minimo tra rapporti di valore negativo', 0, (SELECT id FROM question_id)),
('C. un massimo tra rapporti di valore negativo', 1, (SELECT id FROM question_id)),
('D. un massimo tra rapporti di valore positivo', 0, (SELECT id FROM question_id)),
('E. nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 73
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Cosa succede se, dopo aver individuato la riga con elemento in colonna 0 negativo, nell''algoritmo del simplesso duale ogni elemento di quella riga è positivo o nullo?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Duale impossibile, Primale illimitato.', 0, (SELECT id FROM question_id)),
('B. Duale illimitato, Primale impossibile.', 1, (SELECT id FROM question_id)),
('C. Duale impossibile, Primale impossibile.', 0, (SELECT id FROM question_id)),
('D. Duale illimitato, Primale illimitato.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 74
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Nell''algoritmo del simplesso duale, sia a''i (i>0) una riga corrispondente ad un valore negativo in colonna 0. Se tutti i coefficienti di tale riga sono positivi o nulli, ciò implica che:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Il sistema Ax = b è ridondante.', 0, (SELECT id FROM question_id)),
('B. il problema è impossibile.', 1, (SELECT id FROM question_id)),
('C. la soluzione attuale è ottima.', 0, (SELECT id FROM question_id)),
('D. il problema ha soluzione illimitata.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 75
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Relativamente al prezzo ombra:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Il valore ottimo della variabile xi fornisce il prezzo ombra della risorsa associata al vincolo i.', 0, (SELECT id FROM question_id)),
('B. Il prezzo ombra della risorsa i identifica il valore della soluzione ottima duale.', 0, (SELECT id FROM question_id)),
('C. Il valore ottimo della variabile duale pi-i identifica il prezzo ombra della risorsa associata al vincolo i.', 1, (SELECT id FROM question_id)),
('D. Il prezzo ombra della variabile duale pi-i indica il modo per capire se una base con coefficienti diversi è ancora ottima.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 76
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Relativamente al simplesso duale, quale tra le seguenti affermazioni è errata?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Vogliamo che il pivoting renda positiva yi0 .', 0, (SELECT id FROM question_id)),
('B. Si inizia con una base ammissibile per il primale e vogliamo trovare la soluzione ottima duale.', 1, (SELECT id FROM question_id)),
('C. Vogliamo eliminare le inammissibilità contenute nel tableau.', 0, (SELECT id FROM question_id)),
('D. Il pivoting deve portare il valore 0 in y0s .', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 77
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Nell''operazione di pivoting dell''algoritmo del simplesso duale:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Nessuna di queste.', 0, (SELECT id FROM question_id)),
('B. La colonna del pivot viene moltiplicata per il pivot', 0, (SELECT id FROM question_id)),
('C. La riga del pivot viene moltiplicata per il pivot', 0, (SELECT id FROM question_id)),
('D. La colonna del pivot viene divisa per il pivot', 0, (SELECT id FROM question_id)),
('E. La riga del pivot viene divisa per il pivot', 1, (SELECT id FROM question_id));

-- Correct answer: E

-- DOMANDA 78
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Nel duale di un problema di minimizzazione in forma standard',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Le variabili possono assumere solo valori non positivi', 0, (SELECT id FROM question_id)),
('B. Le variabili possono assumere solo valori non negativi', 0, (SELECT id FROM question_id)),
('C. Le variabili possono assumere solo valori positivi', 0, (SELECT id FROM question_id)),
('D. Le variabili possono assumere qualunque valore', 1, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 79
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'La situazione in cui il primale è impossibile e il corrispondente duale è impossibile',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Si verifica sempre', 0, (SELECT id FROM question_id)),
('B. Può verificarsi', 1, (SELECT id FROM question_id)),
('C. Non può mai verificarsi', 0, (SELECT id FROM question_id)),
('D. Dipende dal gradiente della funzione obiettivo del duale', 0, (SELECT id FROM question_id)),
('E. Dipende dai gradienti delle due funzioni obiettivo', 0, (SELECT id FROM question_id));

-- Correct answer: B


------------------------------------------------------------------------------
-- @Programmazione Lineare Intera
------------------------------------------------------------------------------

-- DOMANDA 80
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Relativamente ad un problema ILP e il suo rilassamento continuo LP',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. z(ILP) >= z(LP)', 1, (SELECT id FROM question_id)),
('B. z(ILP) <= z(LP)', 0, (SELECT id FROM question_id)),
('C. z(ILP) < z(LP)', 0, (SELECT id FROM question_id)),
('D. z(ILP) > z(LP)', 0, (SELECT id FROM question_id)),
('E. z(ILP) = z(LP)', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 81
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Relativamente ad un problema ILP e il suo rilassamento continuo LP',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. z(LP) >= z(ILP)', 0, (SELECT id FROM question_id)),
('B. z(LP) <= z(ILP)', 1, (SELECT id FROM question_id)),
('C. z(LP) > z(ILP)', 0, (SELECT id FROM question_id)),
('D. z(LP) < z(ILP)', 0, (SELECT id FROM question_id)),
('E. z(LP) = z(ILP)', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 82
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Una matrice m x n è totalmente unimodulare se:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. ogni sottomatrice quadrata ha determinante di valore +1 o -1.', 0, (SELECT id FROM question_id)),
('B. ogni sottomatrice quadrata ha determinante di valore unitario.', 0, (SELECT id FROM question_id)),
('C. il suo determinante ha valore unitario.', 0, (SELECT id FROM question_id)),
('D. il suo determinante vale 0, +1 o -1.', 0, (SELECT id FROM question_id)),
('E. Ogni sottomatrice quadrata ha determinante di valore 0, +1 o -1.', 1, (SELECT id FROM question_id));

-- Correct answer: E

-- DOMANDA 83
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Se A è totalmente unimodulare, relativamente a problemi ILP:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Il simplesso risolve problemi in tutte le forme.', 1, (SELECT id FROM question_id)),
('B. Il simplesso risolve solo problemi in forma standard.', 0, (SELECT id FROM question_id)),
('C. Il simplesso risolve problemi in forma standard e canonica, ma non in forma generale.', 0, (SELECT id FROM question_id)),
('D. Il simplesso risolve i problemi in forma standard e generale, ma non in forma canonica.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 84
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Scelta una riga generatrice, un taglio di Gomory impone che',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. la somma delle parti frazionarie delle variabili fuori base sia non maggiore della parte frazionaria del termine noto', 0, (SELECT id FROM question_id)),
('B. la somma delle parti frazionarie delle variabili base sia non maggiore della parte frazionaria del termine noto', 0, (SELECT id FROM question_id)),
('C. la somma delle parti frazionarie delle variabili base sia non minore della parte frazionaria del termine noto', 0, (SELECT id FROM question_id)),
('D. la somma delle parti frazionarie delle variabili fuori base sia non minore della parte frazionaria del termine noto', 1, (SELECT id FROM question_id)),
('E. nessuna delle precedenti', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 85
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Aggiungendo un taglio di Gomory al tableau finale di un LP con yi0 non intero',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Si elimina al più un punto intero ammissibile non ottimo', 0, (SELECT id FROM question_id)),
('B. Il nuovo tableau contiene una base ammissibile ma non ottima per il primale', 0, (SELECT id FROM question_id)),
('C. Il nuovo tableau contiene una base non ammissibile per il primale ma ammissibile per il duale', 1, (SELECT id FROM question_id)),
('D. Si elimina almeno una soluzione ammissibile intera', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 86
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'L''aggiunta al tableau del taglio di Gomory relativo ad una riga generatrice frazionaria produce una soluzione (un tableau) che:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. soddisfa il vincolo di interezza ma non è ottima.', 0, (SELECT id FROM question_id)),
('B. soddisfa il criterio di ottimalità ma non è ammissibile.', 1, (SELECT id FROM question_id)),
('C. è ammissibile ma non è intera.', 0, (SELECT id FROM question_id)),
('D. è ammissibile ma non soddisfa il criterio di ottimalità.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 87
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Sia P il problema ILP e L(P) il suo rilassamento continuo. Se L(P) è illimitato, allora:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. P è sempre impossibile', 0, (SELECT id FROM question_id)),
('B. non si può dire nulla su P', 0, (SELECT id FROM question_id)),
('C. P è sempre illimitato', 0, (SELECT id FROM question_id)),
('D. P è illimitato salvo casi molto particolari', 1, (SELECT id FROM question_id)),
('E. nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 88
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Sia P un problema di programmazione lineare intera e L(P) il suo rilassamento continuo. Se L(P) è impossibile, allora',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. P è impossibile salvo casi molto particolari', 0, (SELECT id FROM question_id)),
('B. non si può dire nulla su P', 0, (SELECT id FROM question_id)),
('C. P è sempre impossibile', 1, (SELECT id FROM question_id)),
('D. P è illimitato', 0, (SELECT id FROM question_id)),
('E. nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 89
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'In un algoritmo branch-and-bound per un problema di massimizzazione, sia U l''upper-bound del nodo corrente. Il nodo viene ucciso se:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. U è minore o uguale al valore della soluzione ottima corrente', 1, (SELECT id FROM question_id)),
('B. U è minore o uguale al valore della soluzione ottima finale', 0, (SELECT id FROM question_id)),
('C. U è maggiore o uguale al valore della soluzione ottima corrente', 0, (SELECT id FROM question_id)),
('D. U è maggiore o uguale al valore della soluzione ottima finale', 0, (SELECT id FROM question_id)),
('E. nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 90
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Dopo aver inserito i vincoli del procedimento Branch-and-Bound nel tableau:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Si prosegue sempre con il simplesso primale.', 0, (SELECT id FROM question_id)),
('B. Si prosegue sempre con il simplesso duale.', 1, (SELECT id FROM question_id)),
('C. Si può proseguire sia con il simplesso primale che con il simplesso duale.', 0, (SELECT id FROM question_id)),
('D. Si prosegue con la Fase 1 del simplesso primale.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 91
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Nel Forward Step della strategia di esplorazione Depth-First rivisitata:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Si generano tutti i figli di P0 e si prosegue.', 0, (SELECT id FROM question_id)),
('B. Si calcola L0,si rimuove dai nodi attivi il nodo con più basso lower bound, si generano i suoi figli e ne si calcolano i lower bound, aggiornando quello migliore.', 0, (SELECT id FROM question_id)),
('C. Si genera un figlio dell''ultimo nodo Pk generato finchè si ottiene una soluzione immediatamente risolubile e si aggiorna eventualmente z.', 0, (SELECT id FROM question_id)),
('D. Si generano tutti i figli del nodo attuale, si calcolano i loro lower bound, si prosegue l''esplorazione dal figlio con minimo lower bound.', 1, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 92
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Sia L il lower bound del nodo corrente in un algoritmo branch-and-bound per un problema di minimizzazione, il nodo viene ucciso se:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. L è minore o uguale al valore della soluzione ottima corrente', 0, (SELECT id FROM question_id)),
('B. L è minore o uguale al valore della soluzione ottima finale', 0, (SELECT id FROM question_id)),
('C. L è maggiore o uguale al valore della soluzione ottima corrente', 1, (SELECT id FROM question_id)),
('D. L è maggiore o uguale al valore della soluzione ottima finale', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 93
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Sia x la soluzione del rilassamento continuo di un problema di programmazione lineare intera di massimizzazione. Se si arrotonda ogni x_j frazionario all''intero più prossimo,',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Si ottiene una soluzione ammissibile ma non ottima per il problema ILP', 0, (SELECT id FROM question_id)),
('B. Si ottiene una soluzione ottima del problema ILP', 0, (SELECT id FROM question_id)),
('C. Si ottiene un upper bound per il problema ILP', 0, (SELECT id FROM question_id)),
('D. Si ottiene una soluzione intera priva di particolari proprietà', 1, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 94
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Sia P un problema di programmazione lineare intera e L(P) il suo rilassamento continuo. Allora:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. La regione ammissibile di L(P) è contenuta nella regione ammissibile di P', 0, (SELECT id FROM question_id)),
('B. La regione ammissibile di P e quella di L(P) non hanno nessuna relazione', 0, (SELECT id FROM question_id)),
('C. La regione ammissibile di P è contenuta nella regione ammissibile di L(P)', 1, (SELECT id FROM question_id)),
('D. L''intersezione fra la regione ammissibile di P e quella di L(P) è vuota', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: C


------------------------------------------------------------------------------
-- @Complessità
------------------------------------------------------------------------------

-- DOMANDA 95
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Cosa è un''istanza di un problema?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Un possibile algoritmo per risolverlo.', 0, (SELECT id FROM question_id)),
('B. Un algoritmo attualmente in esecuzione per risolverlo.', 0, (SELECT id FROM question_id)),
('C. L''insieme di tutti gli algoritmi che lo possono risolvere.', 0, (SELECT id FROM question_id)),
('D. Un particolare caso numerico.', 1, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 96
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Cosa è la dimensione di un problema?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Minimo tempo di esecuzione di un algoritmo per risolverlo.', 0, (SELECT id FROM question_id)),
('B. Lunghezza minima di un output di una sua istanza.', 0, (SELECT id FROM question_id)),
('C. Numero di bit necessari per codificare l''input.', 1, (SELECT id FROM question_id)),
('D. Numero di risorse utilizzate per risolverlo.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 97
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Se un problema appartiene alla classe NP',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. È risolubile solo mediante un albero decisionale di altezza esponenziale', 0, (SELECT id FROM question_id)),
('B. È sempre risolubile mediante un algoritmo di programmazione dinamica', 1, (SELECT id FROM question_id)),
('C. È sempre risolubile in tempo polinomiale', 0, (SELECT id FROM question_id)),
('D. È sempre risolubile mediante un albero decisionale di altezza polinomiale', 0, (SELECT id FROM question_id)),
('E. È sempre risolubile in tempo pseudo-polinomiale', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 98
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Un algoritmo polinomiale per un problema NP-completo:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. risolverebbe in tempo polinomiale i problemi della classe NP, ma non quelli fortemente NP-completi', 0, (SELECT id FROM question_id)),
('B. non può esistere', 0, (SELECT id FROM question_id)),
('C. risolverebbe in tempo polinomiale i problemi della classe NP, ma non quelli della classe P', 0, (SELECT id FROM question_id)),
('D. risolverebbe ogni problema della classe NP in tempo polinomiale', 1, (SELECT id FROM question_id)),
('E. nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 99
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Si dice che S'' domina S'''' se:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. La somma dei pesi di S'' è maggiore o uguale a quella dei pesi di S'''' e la somma dei profitti di S'' è minore o uguale a quella dei profitti di S''''.', 0, (SELECT id FROM question_id)),
('B. La somma dei pesi di S'' e di S'''' è uguale e la somma dei profitti di S'''' è maggiore di quella dei profitti di S''.', 0, (SELECT id FROM question_id)),
('C. La somma dei pesi di S'' è minore o uguale alla somma dei pesi di S'''' e la somma dei profitti di S'' è maggiore o uguale a quella dei profitti di S''''.', 1, (SELECT id FROM question_id)),
('D. La somma dei pesi di S'' è minore a quella dei pesi di S'''' e la somma dei profitti di S'' e di S'''' coincidono.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 100
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'L''algoritmo Knapsack DP è:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Polinomiale', 0, (SELECT id FROM question_id)),
('B. Esponenziale', 0, (SELECT id FROM question_id)),
('C. Pseudo-Esponenziale', 0, (SELECT id FROM question_id)),
('D. Pseudo-Polinomiale', 1, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: D

-- DOMANDA 101
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Relativamente ad un problema fortemente NP-Completo:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Non può esistere nessun algoritmo pseudo-polinomiale, a meno che P=NP.', 1, (SELECT id FROM question_id)),
('B. Non può esistere nessun algoritmo pseudo-polinomiale.', 0, (SELECT id FROM question_id)),
('C. Può esistere un algoritmo pseudo-polinomiale, a meno che P=NP.', 0, (SELECT id FROM question_id)),
('D. Può esistere un algoritmo pseudo-polinomiale.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 102
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Quale tra queste affermazioni è errata?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Per tutti i problemi fortemente NP-Completi esiste un algoritmo pseudo-polinomiale.', 1, (SELECT id FROM question_id)),
('B. La versione riconoscimento e ottimizzazione hanno stessa difficoltà in relazione alla possibilità o meno di trovare la soluzione in tempo polinomiale.', 0, (SELECT id FROM question_id)),
('C. Se A è trasformabile polinomialmente in B e si conosce un algoritmo polinomiale per B, allora si ha un algoritmo polinomiale anche per A.', 0, (SELECT id FROM question_id)),
('D. Un problema che soddisfa la definizione di Np-Completo senza stabilire la sua appartenenza a NP viene detto NP-Difficile.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 103
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Relativamente alla classe di problemi NP, quale di queste affermazioni è errata?',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Contiene i problemi risolubili con un tempo polinomiale da una Macchina di Turing Non Deterministica.', 0, (SELECT id FROM question_id)),
('B. Se un problema non appartiene a NP, allora è possibile trovare un algoritmo polinomiale che lo risolva.', 1, (SELECT id FROM question_id)),
('C. Identifica i problemi RV tali che, se l''istanza della risposta è \"sì\", ciò può essere certificato in tempo polinomiale.', 0, (SELECT id FROM question_id)),
('D. Un problema A di NP è NP-Completo se per ogni problema B di NP, B può essere trasformato polinomialmente in A.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: B

-- DOMANDA 104
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'La programmazione lineare:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. È risolubile in tempo polinomiale, ma non dall''algoritmo del simplesso.', 1, (SELECT id FROM question_id)),
('B. non è risolubile in tempo polinomiale.', 0, (SELECT id FROM question_id)),
('C. È risolubile in tempo polinomiale dall''algoritmo del simplesso.', 0, (SELECT id FROM question_id)),
('D. È risolubile in tempo pseudo-polinomiale dall''algoritmo del simplesso.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 105
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Relativamente ad un problema KP-01:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. È risolvibile solo mediante un albero decisionale.', 0, (SELECT id FROM question_id)),
('B. È risolvibile in tempo polinomiale.', 0, (SELECT id FROM question_id)),
('C. È risolvibile mediante la programmazione dinamica.', 1, (SELECT id FROM question_id)),
('D. non esiste algoritmo pseudo-polinomiale.', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste.', 0, (SELECT id FROM question_id));

-- Correct answer: C

-- DOMANDA 106
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Un problema P è NP-completo se:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Qualunque problema della classe NP si può trasformare in P in tempo polinomiale', 1, (SELECT id FROM question_id)),
('B. Si può trasformare in tempo polinomiale in qualunque problema della classe NP', 0, (SELECT id FROM question_id)),
('C. è risolubile mediante un albero decisionale di altezza polinomiale', 0, (SELECT id FROM question_id)),
('D. è risolubile mediante un algoritmo di programmazione dinamica', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste', 0, (SELECT id FROM question_id));

-- Correct answer: A

-- DOMANDA 107
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
'Un problema Knapsack 0-1:',
5,
1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A. Non può essere risolto in tempo pseudo-polinomiale', 0, (SELECT id FROM question_id)),
('B. È risolvibile solo mediante un albero decisionale di altezza esponenziale', 0, (SELECT id FROM question_id)),
('C. È risolvibile in tempo polinomiale', 0, (SELECT id FROM question_id)),
('D. È sempre risolubile mediante un albero decisionale di altezza polinomiale', 0, (SELECT id FROM question_id)),
('E. Nessuna di queste', 1, (SELECT id FROM question_id));

-- Correct answer: E
