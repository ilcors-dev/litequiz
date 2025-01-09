---------------------------------------------------------------------
-- Example seeder for the ML questions
-- All questions are inserted with category_id = 3
-- is_multiple_choice is 1 if the question had "is_multiple_choice": true, otherwise 0
---------------------------------------------------------------------

-- DOMANDA 1
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'In a Decision Tree for classification, what is a leaf node?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A node which allows classification without errors', 0, (SELECT id FROM question_id)),
('A node which assigns a class value only by majority of examples', 0, (SELECT id FROM question_id)),
('A node where all the objects belong to the same class', 0, (SELECT id FROM question_id)),
('A node which assigns a class value to the objects passing the tests on the path from the root to the node itself', 1, (SELECT id FROM question_id));


-- DOMANDA 2
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the following types of data allows the use of the euclidean distance?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Ordered data', 0, (SELECT id FROM question_id)),
('Transactional data', 0, (SELECT id FROM question_id)),
('Points in a vector space', 1, (SELECT id FROM question_id)),
('Document representations', 0, (SELECT id FROM question_id));


-- DOMANDA 3
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'In data preprocessing, which of the following is not an objective of the aggregation of attributes',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Reduce the number of attributes or objects', 0, (SELECT id FROM question_id)),
('Obtain a less detailed scale', 0, (SELECT id FROM question_id)),
('Reduce the variability of data', 0, (SELECT id FROM question_id)),
('Obtain a more detailed description of data', 1, (SELECT id FROM question_id));


-- DOMANDA 4
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'In order to reduce the dimensionality of a dataset, which is the advantage of Multi Dimensional Scaling (MDS), with respect to Principal Component Analysis (PCA)',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('MDS can be used also with categorical data, provided that the matrix of the distance is available, while PCA is limited to vector spaces', 1, (SELECT id FROM question_id)),
('MDS can work on any kind of data, while PCA is limited to categorical data', 0, (SELECT id FROM question_id)),
('MDS requires less computational power', 0, (SELECT id FROM question_id)),
('MDS can be used with categorical data after a transformation in a vector space', 0, (SELECT id FROM question_id));


-- DOMANDA 5
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the following is a strength of the clustering algorithm DBSCAN?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Requires to set the number of clusters as a parameter', 0, (SELECT id FROM question_id)),
('Ability to find cluster with concavities', 1, (SELECT id FROM question_id)),
('Ability to separate outliers from regular data', 1, (SELECT id FROM question_id)),
('Very fast by computation', 0, (SELECT id FROM question_id));


-- DOMANDA 6
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'After fitting DBSCAN with the default parameter values the results are: 0 clusters, 100% of noise points. Which will be your next trial?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Increase the radius of the neighborhood', 1, (SELECT id FROM question_id)),
('Decrease the radius of the neighborhood', 0, (SELECT id FROM question_id)),
('Reduce the minimum number of objects in the neighborhood', 1, (SELECT id FROM question_id)),
('Reduce the minimum number of objects in the neighborhood and the radius of the neighborhood', 0, (SELECT id FROM question_id));


-- DOMANDA 7
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'In feature selection, what is the Principal Component Analysis?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A mathematical technique used to find the principal attributes which determine the classification process', 0, (SELECT id FROM question_id)),
('A heuristic technique used to find a subset of the attributes which produces the same classifier', 0, (SELECT id FROM question_id)),
('A mathematical technique used to transform non numeric attributes into numeric attributes', 0, (SELECT id FROM question_id)),
('A mathematical technique used to transform a set of numeric attributes into a smaller set of numeric attributes which capture most of the variability in data', 1, (SELECT id FROM question_id));


---------------------------------------------------------------------
-- SPLIT: "For each type of data choose the best suited distance function"
---------------------------------------------------------------------

-- DOMANDA 8
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'For the data type ''Vector space with real values'', which is the best suited distance function?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Manhattan distance', 0, (SELECT id FROM question_id)),
('Euclidean distance', 1, (SELECT id FROM question_id)),
('Jaccard coefficient', 0, (SELECT id FROM question_id)),
('Cosine distance', 0, (SELECT id FROM question_id));


-- DOMANDA 9
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'For the data type ''Vectors of terms representing documents'', which is the best suited distance function?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Manhattan distance', 0, (SELECT id FROM question_id)),
('Euclidean distance', 0, (SELECT id FROM question_id)),
('Jaccard coefficient', 0, (SELECT id FROM question_id)),
('Cosine distance', 1, (SELECT id FROM question_id));


-- DOMANDA 10
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'For the data type ''Boolean data'', which is the best suited distance function?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Manhattan distance', 0, (SELECT id FROM question_id)),
('Euclidean distance', 0, (SELECT id FROM question_id)),
('Jaccard coefficient', 1, (SELECT id FROM question_id)),
('Cosine distance', 0, (SELECT id FROM question_id));


-- DOMANDA 11
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'For the data type ''High dimensional spaces'', which is the best suited distance function?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Manhattan distance', 1, (SELECT id FROM question_id)),
('Euclidean distance', 0, (SELECT id FROM question_id)),
('Jaccard coefficient', 0, (SELECT id FROM question_id)),
('Cosine distance', 0, (SELECT id FROM question_id));


-- DOMANDA 12
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'How does pruning work when generating frequent itemsets?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('If an itemset is frequent, then none of its supersets can be frequent, therefore the frequencies of the supersets are not evaluated', 0, (SELECT id FROM question_id)),
('If an itemset is frequent, then none of its subsets can be frequent, therefore the frequencies of the subsets are not evaluated', 0, (SELECT id FROM question_id)),
('If an itemset is not frequent, then none of its supersets can be frequent, therefore the frequencies of the supersets are not evaluated', 1, (SELECT id FROM question_id)),
('If an itemset is not frequent, then none of its subsets can be frequent, therefore the frequencies of the subsets are not evaluated', 0, (SELECT id FROM question_id));


---------------------------------------------------------------------
-- SPLIT: "Match specific situations of data to the most appropriate pre-processing activity"
---------------------------------------------------------------------

-- DOMANDA 13
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Match the situation: ''A nominal attribute needs to be used as predicting when using the sklearn library'' with the best pre-processing activity',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Rescaling', 0, (SELECT id FROM question_id)),
('Non linear transformations', 0, (SELECT id FROM question_id)),
('Aggregation', 0, (SELECT id FROM question_id)),
('OneHot Encoding', 1, (SELECT id FROM question_id));


-- DOMANDA 14
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Match the situation: ''An attribute has a very skewed distribution (e.g. most of the values concentrated in a small range, and a very long tail of outliers)'' with the best pre-processing activity',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Rescaling', 0, (SELECT id FROM question_id)),
('Non linear transformations', 1, (SELECT id FROM question_id)),
('Aggregation', 0, (SELECT id FROM question_id)),
('OneHot Encoding', 0, (SELECT id FROM question_id));


-- DOMANDA 15
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Match the situation: ''The numeric attributes have very diverse ranges of values'' with the best pre-processing activity',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Rescaling', 1, (SELECT id FROM question_id)),
('Non linear transformations', 0, (SELECT id FROM question_id)),
('Aggregation', 0, (SELECT id FROM question_id)),
('OneHot Encoding', 0, (SELECT id FROM question_id));


-- DOMANDA 16
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Match the situation: ''A categorical attribute has a too large number of distinct values'' with the best pre-processing activity',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Rescaling', 0, (SELECT id FROM question_id)),
('Non linear transformations', 0, (SELECT id FROM question_id)),
('Aggregation', 1, (SELECT id FROM question_id)),
('OneHot Encoding', 0, (SELECT id FROM question_id));


-- DOMANDA 17
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which is different from the others?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Silhouette Index', 1, (SELECT id FROM question_id)),
('Gini Index', 0, (SELECT id FROM question_id)),
('Misclassification Error', 0, (SELECT id FROM question_id)),
('Entropy', 0, (SELECT id FROM question_id));


-- DOMANDA 18
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'When developing a classifier, which of the following is a symptom of overfitting?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('The error rate in the test set is much smaller than the error rate in the training set', 0, (SELECT id FROM question_id)),
('The precision is much greater than the recall', 0, (SELECT id FROM question_id)),
('The error rate in the test set is much greater than the error rate in the training set', 1, (SELECT id FROM question_id)),
('The error rate in the test set is more than 30%', 0, (SELECT id FROM question_id));


-- DOMANDA 19
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Given the following definitions: TP = True Positives; TN = True Negatives; FP = False Positives; FN = False Negatives. Which of the formulas below computes the precision of a binary classifier',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('TP / (TP + FP)', 1, (SELECT id FROM question_id)),
('(TP + TN) / (TP + FP + TN + FN)', 0, (SELECT id FROM question_id)),
('TN / (TN + FP)', 0, (SELECT id FROM question_id)),
('TP / (TP + FN)', 0, (SELECT id FROM question_id));


-- DOMANDA 20
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the following is a base hypothesis for a bayesian classifier?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('The attributes must have negative correlation', 0, (SELECT id FROM question_id)),
('The attributes must be statistically independent inside each class', 1, (SELECT id FROM question_id)),
('The attributes must have zero correlation', 0, (SELECT id FROM question_id)),
('The attributes must be statistically independent', 0, (SELECT id FROM question_id));


-- DOMANDA 21
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'How can we measure the quality of a trained regression model?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('With a formula elaborating the difference between the forecast values and the true ones', 1, (SELECT id FROM question_id)),
('With a confusion matrix', 0, (SELECT id FROM question_id)),
('Counting the number of values correctly forecast', 0, (SELECT id FROM question_id)),
('With precision, recall and accuracy', 0, (SELECT id FROM question_id));


-- DOMANDA 22
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the statements below is true? (Only one)',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('K-means works well also with datasets having a very large number of attributes', 0, (SELECT id FROM question_id)),
('K-means always stop to a configuration which gives the minimum distortion for the chosen value of the number of clusters', 0, (SELECT id FROM question_id)),
('Sometimes k-means stops to a configuration which does not give the minimum distortion for the chosen value of the number of clusters', 1, (SELECT id FROM question_id)),
('K-means finds the number of clusters which give the minimum distortion', 0, (SELECT id FROM question_id));


-- DOMANDA 23
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the following is not a strength point of Dbscan with respect to K-means',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('The effectiveness even if there are clusters with non-convex shape', 0, (SELECT id FROM question_id)),
('The efficiency even in large datasets', 1, (SELECT id FROM question_id)),
('The robustness with respect to outliers', 0, (SELECT id FROM question_id)),
('The effectiveness, even in presence of noise', 0, (SELECT id FROM question_id));


-- DOMANDA 24
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'What does K-means try to minimise?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('The distortion, that is the sum of the squared distances of each point with respect to the points of the other clusters', 0, (SELECT id FROM question_id)),
('The separation, that is the sum of the squared distances of each point with respect to its centroid', 0, (SELECT id FROM question_id)),
('The distortion, that is the sum of the squared distances of each point with respect to its centroid', 1, (SELECT id FROM question_id)),
('The separation, that is the sum of the squared distances of each cluster centroid with respect to the global centroid of the dataset', 0, (SELECT id FROM question_id));


-- DOMANDA 25
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Given the following definitions: TP = True Positives; TN = True Negatives; FP = False Positives; FN = False Negatives. Which of the formulas below computes the accuracy of a binary classifier?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('TN / (TN + FP)', 0, (SELECT id FROM question_id)),
('(TP + TN) / (TP + FP + TN + FN)', 1, (SELECT id FROM question_id)),
('TP / (TP + FP)', 0, (SELECT id FROM question_id)),
('TP / (TP + FN)', 0, (SELECT id FROM question_id));


-- DOMANDA 26
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'What is the cross validation',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A technique to obtain a good estimation of the performance of a classifier when it will be used with data different from the training set', 1, (SELECT id FROM question_id)),
('A technique to obtain a good estimation of the performance of a classifier with the training set', 0, (SELECT id FROM question_id)),
('A technique to improve the quality of a classifier', 0, (SELECT id FROM question_id)),
('A technique to improve the speed of a classifier', 0, (SELECT id FROM question_id));


-- DOMANDA 27
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the statements below is true? (One or more)',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Sometimes k-means stops to a configuration which does not give the minimum distortion for the chosen value of the number of clusters', 1, (SELECT id FROM question_id)),
('K-means is quite efficient even for large datasets', 1, (SELECT id FROM question_id)),
('K-means is very sensitive to the initial assignment of the centers', 1, (SELECT id FROM question_id)),
('K-mean always stops to a configuration which gives the minimum distortion for the chosen value of the number of clusters', 0, (SELECT id FROM question_id));


-- DOMANDA 28
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'In data preprocessing, which of the operations below performs aggregation? (One or more)',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Combination of two attributes in order to obtatn a more general attribute with smaller variability', 0, (SELECT id FROM question_id)),
('Reduction of the number of distinct values of an attribute. in order to reduce its variability', 1, (SELECT id FROM question_id)),
('Combination of two or more datasets in Order to obtatn more Information', 0, (SELECT id FROM question_id)),
('Reduction of the number of rows of the dataset by applying a grouping on one or more attributes and computing the measures as the results of aggregation functions', 1, (SELECT id FROM question_id));


-- DOMANDA 29
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'In a decision tree, the number of objects in a node...',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('... is bigger than the number of objects in its ancestor', 0, (SELECT id FROM question_id)),
('... is smaller than or equal to the number of objects in its ancestor', 1, (SELECT id FROM question_id)),
('... is not related to the number of objects in its ancestor', 0, (SELECT id FROM question_id)),
('... is smaller than the number of objects in its ancestor', 0, (SELECT id FROM question_id));


-- DOMANDA 30
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'What is the meaning of the statement \"the support is anti-monotone\"?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('The support of an itemset is always smaller than the support of its subsets', 0, (SELECT id FROM question_id)),
('The support of an itemset never exceeds the support if its subsets', 0, (SELECT id FROM question_id)),
('The support of an itemsets never exceeds the support if its supersets', 1, (SELECT id FROM question_id)),
('The support of an itemset is always smaller than the support of its supersets', 0, (SELECT id FROM question_id));


-- DOMANDA 31
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'In a dataset with D attributes, how many subsets of attributes should be considered for feature selection according ot an exhaustive search?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('O(D^2)', 0, (SELECT id FROM question_id)),
('O(D!)', 0, (SELECT id FROM question_id)),
('O(D)', 0, (SELECT id FROM question_id)),
('O(2^D)', 1, (SELECT id FROM question_id));


-- DOMANDA 32
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which is the main reason for the MinMax scaling (also known as \"rescaling\") of attributes?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Map all the numeric attributes to the same range, in order to prevent attributes with higher range from having prevalent influence', 1, (SELECT id FROM question_id)),
('Remove abnormal values', 0, (SELECT id FROM question_id)),
('Change the distribution of the numeric attributes, in order to obtain gaussian distributions', 0, (SELECT id FROM question_id)),
('Map all the nominal attributes to the same range in order to prevent the values with higher frequency from having prevailing influence', 0, (SELECT id FROM question_id));


-- DOMANDA 33
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'In a Neural Network, what is the backpropagation?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('The technique used to adjust the node weights according to the difference between the desired output and the output generated by the network', 0, (SELECT id FROM question_id)),
('The technique used to adjust the output according to the difference between the desired weights and the actual weights', 0, (SELECT id FROM question_id)),
('The technique used to adjust the weights limiting the probability of overfitting', 0, (SELECT id FROM question_id)),
('The technique used to adjust the connection weights according to the difference between the desired output and the output generated by the network', 1, (SELECT id FROM question_id));


-- DOMANDA 34
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'What is the main purpose of smoothing in Bayesian classification?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Reduce the variability of the data', 0, (SELECT id FROM question_id)),
('Classifying an object containing attribute values which are missing from some classes in the training set', 1, (SELECT id FROM question_id)),
('Dealing with missing values', 0, (SELECT id FROM question_id)),
('Classifying an object containing attribute values which are missing from some classes in the test set', 0, (SELECT id FROM question_id));


-- DOMANDA 35
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Why do we prune a decision tree?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('To eliminate rows of the dataset which could be influenced by random effects', 0, (SELECT id FROM question_id)),
('To eliminate parts of the tree where the decisions could be influenced by random effects', 1, (SELECT id FROM question_id)),
('To eliminate attributes which could be influenced by random effects', 0, (SELECT id FROM question_id)),
('To eliminate parts of the tree where the decision could generate underfitting', 0, (SELECT id FROM question_id));


-- DOMANDA 36
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the statements below is true? (One or more)',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Increasing the radius of the neighourhood can decrease the number of noise points', 1, (SELECT id FROM question_id)),
('DBSCAN always stops to a configuration which gives the optimal number of clusters', 0, (SELECT id FROM question_id)),
('DBScan can give good performance when clusters have concavities', 1, (SELECT id FROM question_id)),
('Sometimes DBSCAN stops to a configuration which does not include any cluster', 1, (SELECT id FROM question_id));


-- DOMANDA 37
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the following is not a property of a metric distance function',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Triangle inequality', 0, (SELECT id FROM question_id)),
('Positive definiteness', 0, (SELECT id FROM question_id)),
('Symmetry', 0, (SELECT id FROM question_id)),
('Boundedness', 1, (SELECT id FROM question_id));


-- DOMANDA 38
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'What is the coefficient of determination R2?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Provide an index of goodness for a linear regression model', 1, (SELECT id FROM question_id)),
('Measure the amount of error in a linear regression model', 0, (SELECT id FROM question_id)),
('Measure the amount of error in a regression model', 0, (SELECT id FROM question_id)),
('An index of goodness for a classification model', 0, (SELECT id FROM question_id));


-- DOMANDA 39
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'What is the first step in agglomerative clustering?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Cluster Assignment: Assign each data point to a cluster based on the final structure obtained from the dendrogram', 0, (SELECT id FROM question_id)),
('Initialization: Start with each data point as a singleton cluster', 1, (SELECT id FROM question_id)),
('Pairwise Cluster Similarity Calculation: Compute the pairwise similarity or distance between all clusters', 0, (SELECT id FROM question_id)),
('Cutting the Dendrogram: Decide on the number of clusters by cutting the dendrogram at a certain height', 0, (SELECT id FROM question_id));


-- DOMANDA 40
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'In data preparation which is the effect of normalisation?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Map all the numeric attributes subtracting the respective mean and dividing by variance', 0, (SELECT id FROM question_id)),
('Map all the numeric attributes to the same range and to have a Gaussian (or normal) distribution, in order to avoid that attributes with large ranges have more influence', 0, (SELECT id FROM question_id)),
('Map all the numeric attributes to the same range, without altering the distribution, in order to avoid that attributes with large ranges have more influence', 1, (SELECT id FROM question_id)),
('Map all the numeric attributes in order to have a Gaussian (or normal) distribution, in order to avoid that attributes with large ranges have more influence', 0, (SELECT id FROM question_id));


-- DOMANDA 41
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'In which mining activity the Information Gain can be useful?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Clustering', 0, (SELECT id FROM question_id)),
('Discretization', 0, (SELECT id FROM question_id)),
('Discovery of association rules', 0, (SELECT id FROM question_id)),
('Classification', 1, (SELECT id FROM question_id));


-- DOMANDA 42
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  '(refer to the image) 40%, 20%, 50%, 100%
Consider the transactional dataset below
ID Items
1 A,B,C
2 A,B,D
3 B,D,E
4 C,D
5 A,C,D,E
Which is the confidence of the rule
A,C → B
',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('40%', 0, (SELECT id FROM question_id)),
('20%', 0, (SELECT id FROM question_id)),
('50%', 1, (SELECT id FROM question_id)),
('100%', 0, (SELECT id FROM question_id));


-- DOMANDA 43
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the following statements regarding the discovery of association rules is true? (One or more)',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('The confidence of a rule can be computed starting from the supports of the itemsets', 1, (SELECT id FROM question_id)),
('The support of a rule can be computed given the confidence of the rule', 0, (SELECT id FROM question_id)),
('The support of an itemset is anti-monotonic with respect to the composition of the itemset', 1, (SELECT id FROM question_id)),
('The confidence of an itemset is anti-monotonic with respect to the composition of the itemset', 0, (SELECT id FROM question_id));


-- DOMANDA 44
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the following statements is true?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('The data which are similar to the majority are never noise', 0, (SELECT id FROM question_id)),
('Outliers can be due to noise', 1, (SELECT id FROM question_id)),
('The noise always generate outliers', 0, (SELECT id FROM question_id)),
('The noise can generate outliers', 1, (SELECT id FROM question_id));


-- DOMANDA 45
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which is the purpose of discretisation?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Reduce the range of values of a numeric attribute, to make all the attributes more comparable', 0, (SELECT id FROM question_id)),
('Reduce the number of distinct values in an attribute, in order to increase the efficiency of the computations', 0, (SELECT id FROM question_id)),
('Reduce the number of distinct values in an attribute, in order to put in evidence possible patterns and regularities', 1, (SELECT id FROM question_id)),
('Increase the number of distinct values in an attribute, in order to put in evidence possible patterns and regularities', 0, (SELECT id FROM question_id));


---------------------------------------------------------------------
-- SPLIT: "Match the rule evaluation formulas with their names"
---------------------------------------------------------------------

-- DOMANDA 46
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Match the rule evaluation formulas with their names (Leverage, Lift, Confidence, Conviction)
1. sup(AuC) - sup(A)sup(C)
2. conf(A=>C) / sup(C)
3. sup(A=>C) / sup(A)
4. (1 - sup(C)) / (1 - conf(A=>C))
  ',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Leverage -> 4, Lift -> 2, Confidence -> 3, Conviction -> 1', 1, (SELECT id FROM question_id)),
('Leverage -> 3, Lift -> 1, Confidence -> 4, Conviction -> 2', 0, (SELECT id FROM question_id)),
('Leverage -> 1, Lift -> 2, Confidence -> 3, Conviction -> 4', 0, (SELECT id FROM question_id)),
('Leverage -> 2, Lift -> 3, Confidence -> 4, Conviction -> 1', 0, (SELECT id FROM question_id));


-- DOMANDA 47
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'What is the difference between classification and regression?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Classification has a categorical target, while regression has a numeric target', 1, (SELECT id FROM question_id)),
('Classification is a supervised activity. while regression in unsupervised', 0, (SELECT id FROM question_id)),
('Classification can make errors, while regression is always exact', 0, (SELECT id FROM question_id)),
('Classification can have a numeric or categorical target, while regression has always a categorical target', 0, (SELECT id FROM question_id));


-- DOMANDA 48
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the following characteristic of data can reduce the effectiveness of K-Means?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('All the variables have the same distribution of values', 0, (SELECT id FROM question_id)),
('Presence of values with high frequency', 0, (SELECT id FROM question_id)),
('All the variables have the same range of values', 0, (SELECT id FROM question_id)),
('Presence of outliers', 1, (SELECT id FROM question_id));


-- DOMANDA 49
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'In data preprocessing, which of the following are the objectives of the aggregation of attributes?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Obtain a more detailed description of data', 0, (SELECT id FROM question_id)),
('Obtain a less detailed scale', 1, (SELECT id FROM question_id)),
('Reduce the number of attributes or distinct values', 1, (SELECT id FROM question_id)),
('Reduce the variability of data', 1, (SELECT id FROM question_id));


-- DOMANDA 50
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the statements below about Hierarchical Agglomerative Clustering is true?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Is very efficient also with large datasets', 0, (SELECT id FROM question_id)),
('Is based on a well founded statistical model', 0, (SELECT id FROM question_id)),
('Requires the definition of distance between sets of objects', 1, (SELECT id FROM question_id)),
('Requires the definition of Inertia of clusters', 0, (SELECT id FROM question_id));


-- DOMANDA 51
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'What are the hyperparameters of a Neural Network? (Possibly non exhaustive)',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Input layers structure, Learning rate, Activation function, Number of epochs', 0, (SELECT id FROM question_id)),
('Hidden layers structure, Learning rate, Activation function, Number of epochs', 1, (SELECT id FROM question_id)),
('Hidden layers structure, Output layer structure, Activation function, Number of epochs', 0, (SELECT id FROM question_id)),
('Network structure, Learning rate, Backpropagation algorithm, Number of epochs', 0, (SELECT id FROM question_id));


-- DOMANDA 52
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which is different from the others?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Dbscan', 0, (SELECT id FROM question_id)),
('Decision Tree', 0, (SELECT id FROM question_id)),
('Neural Network', 0, (SELECT id FROM question_id)),
('SVM', 1, (SELECT id FROM question_id));


-- DOMANDA 53
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which is the main reason for the standardization of numeric attributes?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Map all the numeric attributes to a new range such that the mean is zero and the variance is one', 1, (SELECT id FROM question_id)),
('Map all the nominal attributes to the same range, in order to prevent the values with higher frequency from having prevailing influence', 0, (SELECT id FROM question_id)),
('Change the distribution of the numeric attributes, in order to obtain gaussian distributions', 0, (SELECT id FROM question_id)),
('Remove non-standard values', 0, (SELECT id FROM question_id));


-- DOMANDA 54
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the following measure can be used as an alternative to the Information Gain?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Jaccard Index', 0, (SELECT id FROM question_id)),
('Sihlouette Index', 0, (SELECT id FROM question_id)),
('Gini Index', 1, (SELECT id FROM question_id)),
('Rand Index', 0, (SELECT id FROM question_id));


-- DOMANDA 55
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which is different from the others?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Decision Tree', 1, (SELECT id FROM question_id)),
('Apriori', 0, (SELECT id FROM question_id)),
('Expectation Maximisation', 0, (SELECT id FROM question_id)),
('K-means', 0, (SELECT id FROM question_id));


-- DOMANDA 56
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'How is the number of clusters determined in agglomerative clustering?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('By cutting the dendrogram at a certain height.', 1, (SELECT id FROM question_id)),
('By assigning each data point to a cluster based on the final structure obtained from the dendrogram', 0, (SELECT id FROM question_id)),
('By computing the pairwise similarity or distance between all clusters.', 0, (SELECT id FROM question_id)),
('By merging the closest clusters according to the defined distance metric.', 0, (SELECT id FROM question_id));


-- DOMANDA 57
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the following clustering methods is not based on distances between objects?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Hierarchical Agglomerative', 0, (SELECT id FROM question_id)),
('DBSCAN', 0, (SELECT id FROM question_id)),
('Expectation Maximization', 1, (SELECT id FROM question_id)),
('K-Means', 0, (SELECT id FROM question_id));


-- DOMANDA 58
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Consider the transactional dataset below:
ID Items
1 A,B,C
2 A,B,D
3 B,D,E
4 C,D
5 A,C,D,E
  Which is the support of the rule A,C->B?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('100%', 0, (SELECT id FROM question_id)),
('20%', 1, (SELECT id FROM question_id)),
('40%', 0, (SELECT id FROM question_id)),
('50%', 0, (SELECT id FROM question_id));


-- DOMANDA 59
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'What is the Gini index?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('An impurity measure of a dataset alternative to the Information Gain and to the Misclassification Index', 1, (SELECT id FROM question_id)),
('An impurity measure of a dataset alternative to overfitting and underfitting', 0, (SELECT id FROM question_id)),
('An accuracy measure of a dataset alternative to the Information Gain and to the Misclassification Index', 0, (SELECT id FROM question_id)),
('A measure of the entropy of a dataset', 0, (SELECT id FROM question_id));


-- DOMANDA 60
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'When is polynomial regression appropriate?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('When it is necessary to project the data into a dimensional space', 0, (SELECT id FROM question_id)),
('When there is more than one predicting attribute', 0, (SELECT id FROM question_id)),
('When the target values are not linearly separable', 0, (SELECT id FROM question_id)),
('When the relationship between the predicting variable and the target cannot be approximated as linear', 1, (SELECT id FROM question_id));


-- DOMANDA 61
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the following characteristic of data can reduce the effectiveness of DBSCAN?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Presence of outliers', 0, (SELECT id FROM question_id)),
('Presence of clusters with different densities', 1, (SELECT id FROM question_id)),
('Clusters have concavities', 0, (SELECT id FROM question_id)),
('All the variables are the same range of values', 0, (SELECT id FROM question_id));


-- DOMANDA 62
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Given the two binary vectors below, which is their similarity according to the Simple Matching Coefficient?
abcdef ghij
1000101101
1011101010
',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('0.5', 1, (SELECT id FROM question_id)),
('0.2', 0, (SELECT id FROM question_id)),
('0.1', 0, (SELECT id FROM question_id)),
('0.3', 0, (SELECT id FROM question_id));


-- DOMANDA 63
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Given the following definitions: TP = True Positives; TN = True Negatives; FP = False Positives; FN = False Negatives. Which of the formulas below computes the recall of a binary classifier?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('TP / (TP + FN)', 1, (SELECT id FROM question_id)),
('TN / (TN + FP)', 0, (SELECT id FROM question_id)),
('TP / (TP + FP)', 0, (SELECT id FROM question_id)),
('(TP + TN) / (TP + FP + TN + FN)', 0, (SELECT id FROM question_id));


-- DOMANDA 64
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'What measure is maximised by the Expectation Maximization algorithm for clustering?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('The likelihood the distributions, defined by the parameters found, given the data available', 1, (SELECT id FROM question_id)),
('The likelihood of an example', 0, (SELECT id FROM question_id)),
('The support of a class', 0, (SELECT id FROM question_id)),
('The likelihood of an attribute, given the class label', 0, (SELECT id FROM question_id));


-- DOMANDA 65
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the following is not an objective of feature selection',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Reduce the effect of noise', 0, (SELECT id FROM question_id)),
('Avoid the curse of dimensionality', 0, (SELECT id FROM question_id)),
('Reduce time and memory complexity of the mining algorithms', 0, (SELECT id FROM question_id)),
('Select the features with higher range, which have more influence on the computation', 1, (SELECT id FROM question_id));


-- DOMANDA 66
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which is the effect of the curse of dimensionality',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('When the number of dimensions increases the computing power necessary to compute the distances becomes too high', 0, (SELECT id FROM question_id)),
('When the number of dimensions increases the classifiers cannot be correctly tuned', 0, (SELECT id FROM question_id)),
('When the number of dimensions increases the euclidean distance becomes less effective to discriminate between points in the space', 1, (SELECT id FROM question_id)),
('When the number of dimensions increases the results tend to be prone to overfitting', 0, (SELECT id FROM question_id));


-- DOMANDA 67
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the following situations could suggest the use of MinMax scaling? (also known as \"rescaling'')',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('There are attributes with very skewed data distributions', 0, (SELECT id FROM question_id)),
('There are numeric attributes with very diverse value ranges', 1, (SELECT id FROM question_id)),
('There is a numeric attribute with values spread in a very large range', 0, (SELECT id FROM question_id)),
('There are attrtbutes with a very large number of missing values', 0, (SELECT id FROM question_id));


-- DOMANDA 68
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the following is a strength of the clustering algorithm DBSCAN?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Ability to separate outliers from regular data', 1, (SELECT id FROM question_id)),
('Very fast by computation', 0, (SELECT id FROM question_id)),
('Ability to find cluster with concavities', 1, (SELECT id FROM question_id)),
('Requires to set the number of clusters as a parameter', 0, (SELECT id FROM question_id));


-- DOMANDA 69
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'In a decision tree, an attribute which is used only in nodes near the leaves...',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('... guarantees high increment of purity', 0, (SELECT id FROM question_id)),
('... is irrelevant with respect to the target', 0, (SELECT id FROM question_id)),
('... gives little insight with respect to the target', 1, (SELECT id FROM question_id)),
('... has a high correlation with respect to the target', 0, (SELECT id FROM question_id));


-- DOMANDA 70
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'What measure is maximised by the Expectation Maximisation algorithm for clustering?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('The likelihood of a class label, given the attributes of the example', 1, (SELECT id FROM question_id)),
('The support of a class', 0, (SELECT id FROM question_id)),
('The likelihood of an example', 0, (SELECT id FROM question_id)),
('The likelihood of an attribute, given the class label', 0, (SELECT id FROM question_id));


-- DOMANDA 71
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which is different from the others?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Dbscan', 0, (SELECT id FROM question_id)),
('K-means', 0, (SELECT id FROM question_id)),
('Decision Tree', 1, (SELECT id FROM question_id)),
('Expectation Maximisation', 0, (SELECT id FROM question_id));


-- DOMANDA 72
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'When training a neural network, what is the learning rate?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('The slope of the activation function in a specific node', 0, (SELECT id FROM question_id)),
('A multiplying factor of the correction to be applied to the connection weights', 1, (SELECT id FROM question_id)),
('The ratio between the size of the hidden layer and the input layer of the network', 0, (SELECT id FROM question_id)),
('The speed of convergence to a stable solution during the learning process', 0, (SELECT id FROM question_id));


-- DOMANDA 73
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  '(refer to the image) 33%, 100%, 50%, 20%
Consider the transactional dataset below
ID Items
1 A,B,C
2 A,B,D
3 B,D,E
4 C,D
5 A,C,D,E
Which is the confidence of the rule B → E?
',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('33%', 1, (SELECT id FROM question_id)),
('100%', 0, (SELECT id FROM question_id)),
('50%', 0, (SELECT id FROM question_id)),
('20%', 0, (SELECT id FROM question_id));


-- DOMANDA 74
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the statements below best describes the strategy of Apriori in finding the frequent itemsets?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Evaluation of the support of the itemsets in an order such that uninteresting parts of the search space are pruned as soon as possible', 1, (SELECT id FROM question_id)),
('Evaluation of the confidence of the itemsets in an order such that uninteresting parts of the search space are pruned as soon as possible', 0, (SELECT id FROM question_id)),
('Evaluation of the support of the itemsets in an order such that uninteresting parts of the search space are considered only at the end of the execution', 0, (SELECT id FROM question_id)),
('Evaluation of the support of the itemsets in an order such that the interesting parts of the search space are pruned as soon as possible', 0, (SELECT id FROM question_id));


-- DOMANDA 75
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'A Decision Tree is...',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A tree-structured plan of tests on multiple attributes to forecast the target', 0, (SELECT id FROM question_id)),
('A tree-structured plan of tests on single attributes to obtain the maximum purity of a node', 0, (SELECT id FROM question_id)),
('A tree-structured plan of tests on single attributes to forecast the target', 1, (SELECT id FROM question_id)),
('A tree-structured plan of tests on single attributes to forecast the cluster', 0, (SELECT id FROM question_id));


-- DOMANDA 76
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'What is the single linkage?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('A method to compute the separation of the objects inside a cluster', 0, (SELECT id FROM question_id)),
('A method to compute the distance between two objects, it can be used in hierarchical clustering', 0, (SELECT id FROM question_id)),
('A method to compute the distance between two classes, it can be used in decision trees', 0, (SELECT id FROM question_id)),
('A method to compute the distance between two sets of items, it can be used in hierarchical clustering', 1, (SELECT id FROM question_id));


-- DOMANDA 77
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'With reference to the total sum of squared errors and separation of a clustering scheme, which of the statements below is true?',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('They are two ways to measure the same thing', 0, (SELECT id FROM question_id)),
('They are strictly correlated, if, changing the clustering scheme, one increases, then the other does the same', 0, (SELECT id FROM question_id)),
('It is possible to optimise them (i.e. minimise SSE and maximise SSB) separately', 0, (SELECT id FROM question_id)),
('They are strictly correlated, if, changing the clustering scheme, one increases, then the other decres', 1, (SELECT id FROM question_id));


-- DOMANDA 78
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Which of the following preprocessing activities is useful to build a Naive Bayes classifier if the independence hypothesis is violated:',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('Discretisation', 0, (SELECT id FROM question_id)),
('Normalisation', 0, (SELECT id FROM question_id)),
('Standardisation', 0, (SELECT id FROM question_id)),
('Feature selection', 1, (SELECT id FROM question_id));


-- DOMANDA 79
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'Given the two binary vectors below, which is their similarity according to the Jaccard Coefficient?
abcdef ghij
1000101101
1011101010
  ',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('0.5', 0, (SELECT id FROM question_id)),
('0.375', 1, (SELECT id FROM question_id)),
('0.2', 0, (SELECT id FROM question_id)),
('0.1', 0, (SELECT id FROM question_id));


-- DOMANDA 80
INSERT INTO questions (question, category_id, is_multiple_choice)
VALUES (
  'The Information Gain is used to',
  4,
  1
);
WITH question_id AS (SELECT last_insert_rowid() AS id)
INSERT INTO answers (text, is_correct, question_id) VALUES
('select the attribute which maximises, for a given test set, the ability to predict the class value', 0, (SELECT id FROM question_id)),
('select the attribute which maximises, for a given training set, the ability to predict the class value', 1, (SELECT id FROM question_id)),
('select the class with maximum probability', 0, (SELECT id FROM question_id)),
('select the attribute which maximises, for a given training set, the ability to predict all the other attribute values', 0, (SELECT id FROM question_id));
