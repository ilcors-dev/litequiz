-- DOMANDA 1
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Which of the texts describes the DFM schema below?\nImmagine senza didascalia\nWe need to track the purchases with credit cards. Each purchase has an amount, an exchange and a credit limit. The purchases are done in a date and i a store of a given type and country; stores have also an area. Purchasees have a card name (e.g. MyCard or JeansCard), card_names have a card type (e.g. credit or debit). Card types have also an issuing bank adnd a country.
Purchase
├── Amount
├── Exchange
├── CreditLimit
├── Date
├── Currency
├── Store
│   ├── StoreType
│   ├── Country
│   └── Area
├── CardType
│   ├── CardName
│   ├── IssuingBank
│       └── Country
  ', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('We need to track the purchases with credit cards. Each puchase has an amount, an exchange and a credit limit. The purchases are done in a date and in a store of a given type; stores types have also a country and an area. Purchases have a card type (e.g. credit or debit) and a card name (e.g. MyCard or JeansCard). Card names have also ain issuing bank and a country.', 0, (SELECT id FROM question_id)),
('We need to track the purchases with credit cards. Each purchase has an amount, an exchange and a credit limit. The purchases are done in a date and in a store of a given type; stores have also a country and an area. Purchases have a card type (e.g. credit or debit) and a card name (e.g. MyCard or JeansCard). Card types have also an issuing bank and a country.', 1, (SELECT id FROM question_id));

-- DOMANDA 2
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Which of the definition below describes the OLAP operation Drill-Down', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Changes the layout, in order to analyse a group of data from a different viewpoint', 0, (SELECT id FROM question_id)),
('Reduces the number of cube dimensions after setting one of the dimensions to a specific value', 0, (SELECT id FROM question_id)),
('Creates a link between concepts in interrelated cubes, to compare them', 0, (SELECT id FROM question_id)),
('Causes an increase in data aggregation and removes a detail level in a hierarchy', 0, (SELECT id FROM question_id)),
('Reduces data aggregation and adds a detail level to a hierarchy', 1, (SELECT id FROM question_id));

-- DOMANDA 3
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Select the sentences describing a characteristic of a Data Warehouse', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Includes all the base data in their native format', 0, (SELECT id FROM question_id)),
('Non volatile', 1, (SELECT id FROM question_id)),
('Includes the time dimension', 1, (SELECT id FROM question_id)),
('Solves the inconsistencies', 1, (SELECT id FROM question_id)),
('Constantly updated as soon as the base data are updated', 0, (SELECT id FROM question_id));

-- DOMANDA 4
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Which of the definition below describes the OLAP operation Pivot', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Reduces data aggregation and adds a detail level to a hierarchy', 0, (SELECT id FROM question_id)),
('Causes an increase in data aggregation and removes a detail level in a hierarchy', 0, (SELECT id FROM question_id)),
('Creates a link between concepts in interrelated cubes, to compare them', 0, (SELECT id FROM question_id)),
('Reduces the number of cube dimensions after setting one of the dimensions to a specific value', 0, (SELECT id FROM question_id)),
('Changes the layout, in order to analyse a group of data from a different viewpoint', 1, (SELECT id FROM question_id));

-- DOMANDA 5
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Check the features of Data Lakes in comparison with Data Warehouses, Multiple answers allowed. Selecting a wrong option will be penalised', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Can run on less expensive HW/SW', 1, (SELECT id FROM question_id)),
('Do not enforce data quality', 1, (SELECT id FROM question_id)),
('More complex management', 0, (SELECT id FROM question_id)),
('Completely defined use cases', 0, (SELECT id FROM question_id));

-- DOMANDA 6
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Talking about the general idea of database, what is the purpose of the \"Schema on write\" strategy?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Optimisation for specific types of queries', 1, (SELECT id FROM question_id)),
('Clean design of the data structure', 1, (SELECT id FROM question_id)),
('Avoid preprocessing of data before writing', 0, (SELECT id FROM question_id)),
('Flexibility and efficiency for any kind of query', 0, (SELECT id FROM question_id));

-- DOMANDA 7
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Talking about the general idea of database, what is the meaning of \"Schema on read\"?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Create a schema for data after reading them from the database', 1, (SELECT id FROM question_id)),
('Write the raw data in the database, then at reading time shape then according to the reader''s needs', 1, (SELECT id FROM question_id)),
('Change the schema of the data before each read', 0, (SELECT id FROM question_id)),
('Read the schema of the data before each data read', 0, (SELECT id FROM question_id));

-- DOMANDA 8
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Which of the following are typical data warehouse queries?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('What is the total revenue of yesterday in shop \"BO03\"?', 0, (SELECT id FROM question_id)),
('What is the total revenue per product category and state?', 1, (SELECT id FROM question_id)),
('Which products maximize the profit?', 1, (SELECT id FROM question_id)),
('What is the relationship between profits gained by products \"WWW\" and \"ZZZ\"?', 1, (SELECT id FROM question_id)),
('Which is the stock of product \"XXX\" in the \"YYY\" warehouse', 0, (SELECT id FROM question_id));

-- DOMANDA 9
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Which of the following sentences describes an advantage of a Data Warehouse with respect to a standard DBMS', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Has tools for helping to solve inconsistencies', 1, (SELECT id FROM question_id)),
('Allows efficient execution of key-based queries', 0, (SELECT id FROM question_id)),
('Allows efficient execution of multi-dimensional queries', 1, (SELECT id FROM question_id)),
('Manages efficiently data updates', 0, (SELECT id FROM question_id)),
('Allows analysis along the time dimension', 1, (SELECT id FROM question_id));

-- DOMANDA 10
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Which of the definitions below refers to \"Drill across\"?\n(Originally from: Link the names of the OLAP operations below to their definitions)', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Reduces the number of cube dimensions after setting one of the dimensions to a specific value', 1, (SELECT id FROM question_id)),
('Creates a link between concepts in interrelated cubes, in order to compare them', 0, (SELECT id FROM question_id)),
('Changes the layout, in order to analyse a group of data from a different viewpoint', 0, (SELECT id FROM question_id)),
('Reduces data aggregation and adds a detail level to a hierarchy', 0, (SELECT id FROM question_id)),
('Causes an increase in data aggregation and removes a detail level in a hierarchy', 0, (SELECT id FROM question_id));

-- DOMANDA 11
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Which of the definitions below refers to \"Roll-up\"?\n(Originally from: Link the names of the OLAP operations below to their definitions)', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Reduces the number of cube dimensions after setting one of the dimensions to a specific value', 0, (SELECT id FROM question_id)),
('Creates a link between concepts in interrelated cubes, in order to compare them', 0, (SELECT id FROM question_id)),
('Changes the layout, in order to analyse a group of data from a different viewpoint', 0, (SELECT id FROM question_id)),
('Reduces data aggregation and adds a detail level to a hierarchy', 0, (SELECT id FROM question_id)),
('Causes an increase in data aggregation and removes a detail level in a hierarchy', 1, (SELECT id FROM question_id));

-- DOMANDA 12
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Which of the definitions below refers to \"Drill down\"?\n(Originally from: Link the names of the OLAP operations below to their definitions)', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Reduces the number of cube dimensions after setting one of the dimensions to a specific value', 0, (SELECT id FROM question_id)),
('Creates a link between concepts in interrelated cubes, in order to compare them', 0, (SELECT id FROM question_id)),
('Changes the layout, in order to analyse a group of data from a different viewpoint', 0, (SELECT id FROM question_id)),
('Reduces data aggregation and adds a detail level to a hierarchy', 1, (SELECT id FROM question_id)),
('Causes an increase in data aggregation and removes a detail level in a hierarchy', 0, (SELECT id FROM question_id));

-- DOMANDA 13
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Which of the definitions below refers to \"Pivot\"?\n(Originally from: Link the names of the OLAP operations below to their definitions)', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Reduces the number of cube dimensions after setting one of the dimensions to a specific value', 0, (SELECT id FROM question_id)),
('Creates a link between concepts in interrelated cubes, in order to compare them', 0, (SELECT id FROM question_id)),
('Changes the layout, in order to analyse a group of data from a different viewpoint', 1, (SELECT id FROM question_id)),
('Reduces data aggregation and adds a detail level to a hierarchy', 0, (SELECT id FROM question_id)),
('Causes an increase in data aggregation and removes a detail level in a hierarchy', 0, (SELECT id FROM question_id));

-- DOMANDA 14
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Which of the definitions below refers to \"Slice dice\"?\n(Originally from: Link the names of the OLAP operations below to their definitions)', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Reduces the number of cube dimensions after setting one of the dimensions to a specific value', 1, (SELECT id FROM question_id)),
('Creates a link between concepts in interrelated cubes, in order to compare them', 0, (SELECT id FROM question_id)),
('Changes the layout, in order to analyse a group of data from a different viewpoint', 0, (SELECT id FROM question_id)),
('Reduces data aggregation and adds a detail level to a hierarchy', 0, (SELECT id FROM question_id)),
('Causes an increase in data aggregation and removes a detail level in a hierarchy', 0, (SELECT id FROM question_id));

-- DOMANDA 15
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Which advantage is associated to Single Layer?\n(Originally from: Associate the various Data Warehouse Architectures to the respective advantages)', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('The occupation of space is minimised', 1, (SELECT id FROM question_id)),
('The workloads for analysis and daily operations are separated', 0, (SELECT id FROM question_id)),
('An intermediate level of consolidated data is available', 0, (SELECT id FROM question_id));

-- DOMANDA 16
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Which advantage is associated to Two Layers?\n(Originally from: Associate the various Data Warehouse Architectures to the respective advantages)', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('The occupation of space is minimised', 0, (SELECT id FROM question_id)),
('The workloads for analysis and daily operations are separated', 1, (SELECT id FROM question_id)),
('An intermediate level of consolidated data is available', 0, (SELECT id FROM question_id));

-- DOMANDA 17
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Which advantage is associated to Three Layers?\n(Originally from: Associate the various Data Warehouse Architectures to the respective advantages)', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('The occupation of space is minimised', 0, (SELECT id FROM question_id)),
('The workloads for analysis and daily operations are separated', 0, (SELECT id FROM question_id)),
('An intermediate level of consolidated data is available', 1, (SELECT id FROM question_id));

-- DOMANDA 18
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Talking about the general idea of database, what is the meaning of \"Schema on write\"?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Create a schema for data while writing into the database', 0, (SELECT id FROM question_id)),
('Create a schema for data before writing into the database', 1, (SELECT id FROM question_id)),
('Change the schema of the data after each write', 0, (SELECT id FROM question_id)),
('Create a schema for data after writing into the database', 0, (SELECT id FROM question_id));

-- DOMANDA 19
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('In which part of the CRISP methodology we perform the test design activity?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Business Understanding', 0, (SELECT id FROM question_id)),
('Evaluation', 0, (SELECT id FROM question_id)),
('Data Understanding', 0, (SELECT id FROM question_id)),
('Modeling', 1, (SELECT id FROM question_id));

-- DOMANDA 20
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Which of the definition below describes the OLAP operation Roll-Up', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Creates a link between concepts in interrelated cubes, to compare them', 0, (SELECT id FROM question_id)),
('Reduces the number of cube dimensions after setting one of the dimensions to a specific value', 0, (SELECT id FROM question_id)),
('Reduces data aggregation and adds a detail level in a hierarchy', 0, (SELECT id FROM question_id)),
('Causes an increase in data aggregation and removes a detail level in a hierarchy', 1, (SELECT id FROM question_id)),
('Changes the layout, in order to analyse a group of data from a different viewpoint', 0, (SELECT id FROM question_id));

-- DOMANDA 21
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Check the main objectives pursued when choosing a Data Lake architecture', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Store the data directly from the sources, as they are; the most appropriate structure will be decided later, according to the user needs', 1, (SELECT id FROM question_id)),
('The data must be accurately structured, in order to provide fast answers to complex queries', 0, (SELECT id FROM question_id)),
('The storage must be scalable and cheap, at the expenses of latency', 1, (SELECT id FROM question_id)),
('Ensure high quality of data through an accurate cleaning and transformation step', 0, (SELECT id FROM question_id));

-- DOMANDA 22
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Talking about ETL, which of the following activities is related to the Cleansing step?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Association of a timestamp to the operational data', 0, (SELECT id FROM question_id)),
('Elimination of duplicates', 1, (SELECT id FROM question_id)),
('Snapshot of the operational data', 0, (SELECT id FROM question_id)),
('Usage of dictionaries to solve inconsistencies', 1, (SELECT id FROM question_id));

-- DOMANDA 23
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Order the ETL operations to obtain the correct sequence (1 = first, 4 = last)\nWhich is step #1?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Transformation', 0, (SELECT id FROM question_id)),
('Loading', 0, (SELECT id FROM question_id)),
('Extraction', 1, (SELECT id FROM question_id)),
('Cleansing', 0, (SELECT id FROM question_id));

-- DOMANDA 24
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Order the ETL operations to obtain the correct sequence (1 = first, 4 = last)\nWhich is step #2?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Transformation', 0, (SELECT id FROM question_id)),
('Loading', 0, (SELECT id FROM question_id)),
('Extraction', 0, (SELECT id FROM question_id)),
('Cleansing', 1, (SELECT id FROM question_id));

-- DOMANDA 25
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Order the ETL operations to obtain the correct sequence (1 = first, 4 = last)\nWhich is step #3?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Transformation', 1, (SELECT id FROM question_id)),
('Loading', 0, (SELECT id FROM question_id)),
('Extraction', 0, (SELECT id FROM question_id)),
('Cleansing', 0, (SELECT id FROM question_id));

-- DOMANDA 26
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Order the ETL operations to obtain the correct sequence (1 = first, 4 = last)\nWhich is step #4?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Transformation', 0, (SELECT id FROM question_id)),
('Loading', 1, (SELECT id FROM question_id)),
('Extraction', 0, (SELECT id FROM question_id)),
('Cleansing', 0, (SELECT id FROM question_id));

-- DOMANDA 27
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Rank the technologies for increasing level of abstraction (1 = most specific ... 3 = higher level):\nWhich one is Rank #1?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('SQL queries on operational databases', 1, (SELECT id FROM question_id)),
('Data mining on operational databases', 0, (SELECT id FROM question_id)),
('OLAP Analysis on Data Mart', 0, (SELECT id FROM question_id));

-- DOMANDA 28
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Rank the technologies for increasing level of abstraction (1 = most specific ... 3 = higher level):\nWhich one is Rank #2?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('SQL queries on operational databases', 0, (SELECT id FROM question_id)),
('Data mining on operational databases', 0, (SELECT id FROM question_id)),
('OLAP Analysis on Data Mart', 1, (SELECT id FROM question_id));

-- DOMANDA 29
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Rank the technologies for increasing level of abstraction (1 = most specific ... 3 = higher level):\nWhich one is Rank #3?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('SQL queries on operational databases', 0, (SELECT id FROM question_id)),
('Data mining on operational databases', 1, (SELECT id FROM question_id)),
('OLAP Analysis on Data Mart', 0, (SELECT id FROM question_id));

-- DOMANDA 30
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('What is Data Ingestion?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('A process that copies data from sources to a repository, taking care of possible differences in speed between the generation and the storing process', 1, (SELECT id FROM question_id)),
('A process that copies data from sources to a repository, ensuring high data quality', 0, (SELECT id FROM question_id)),
('A process that copies data from sources to a repository, making the transformation required by the user', 0, (SELECT id FROM question_id)),
('A process that copies data from sources to a Data Warehouse guaranteeing the correctness of data with respect to the schema', 0, (SELECT id FROM question_id));

-- DOMANDA 31
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Which of the activities below is part of \"Business Understanding\" in the CRISP methodology?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Which machine learning functions are necessary for my problem?', 0, (SELECT id FROM question_id)),
('Which data must be collected with a specific campaign?', 0, (SELECT id FROM question_id)),
('Which data are available?', 0, (SELECT id FROM question_id)),
('Which are the resources available (manpower, hardware, software, ...)', 1, (SELECT id FROM question_id));

-- DOMANDA 32
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Talking about the general idea of database, what is the purpose of the \"Schema on read\" strategy?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Possibility to extract data in various shapes', 1, (SELECT id FROM question_id)),
('Optimisation for various types of queries', 0, (SELECT id FROM question_id)),
('Flexibility for any kind of query', 1, (SELECT id FROM question_id)),
('Avoid preprocessing of data before writing', 1, (SELECT id FROM question_id));

-- DOMANDA 33
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES ('Talking about ETL, which of the following activities is related to the Extraction step?', 4, 1);

WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id)
VALUES
('Snapshot of the operational data', 1, (SELECT id FROM question_id)),
('Elimination of duplicates', 0, (SELECT id FROM question_id)),
('Association of a timestamp to the operational data', 1, (SELECT id FROM question_id)),
('Usage of dictionaries to solve inconsistencies', 0, (SELECT id FROM question_id));
