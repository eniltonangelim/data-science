# Machine Learning

Técnica de desenvolvimento de software e também um tipo de inteligência artificial
que permite computadores resolverem problemas analisando dados do mundo real.

Em _Machine Learning_ existem vários tipos diferentes de tarefas ou técnicas: 

- Supervised learning
- Unsupervised learning
- Reinforcement learning

## When to Use Machine Learning

Use machine learning for the following situations:

    You cannot code the rules: Many human tasks (such as recognizing whether an email is spam or not spam) cannot be adequately solved using a simple (deterministic), rule-based solution. A large number of factors could influence the answer. When rules depend on too many factors and many of these rules overlap or need to be tuned very finely, it soon becomes difficult for a human to accurately code the rules. You can use ML to effectively solve this problem.

    You cannot scale: You might be able to manually recognize a few hundred emails and decide whether they are spam or not. However, this task becomes tedious for millions of emails. ML solutions are effective at handling large-scale problems.

### Supervised learning

Cada amostra de treino do conjunto de dados tem um rótulo (label, target) correspondente ou valor de saída associado a ele.
O algoritmo aprende com os dados para predizer a rótulo ou valores de saída.  

- Regressão: métodos de regressão buscam encontrar como uma variável evolui em relação a outras.
- Classificação: são métodos que buscam identificar um rótulo com base em categórias.

### Unsupervised learning

Não há variáveis para os dados de treinamento. Um algoritmo de aprendizado de máquina tenta aprender os padrões ou distribuições subjacentes que governam os dados.

- Clusterização (k-means)

### Reinforcement learning

O algoritmo descobre quais ações tomar em uma situação para maximizar uma recompensa (na forma de um número) no caminho para atingir um objetivo específico. Esta é uma abordagem completamente diferente da aprendizagem supervisionada e não supervisionada.

## Components of Machine Learning

> A model is an extremely generic program(or block of code), made specific by the data used to train it. It is used to solve different problems. 

- Machine Learning Model
- Model Training Algorithm
- Model Inference Algorithm

## Machine Learning Steps

| Step 1 | Step 2 | Step 3 | Step 4 | Step 5 |
|:------:|:------:|:------:|:------:|:------:|
| Define the Problem | Build the Dataset | Train the Model | Evaluate the Model | use the Model |

### Step 1 - Define the Problem

- Define a very specific task
- Identify the machine learning task we might use to solve this problem

#### Solving Business Problems

Examples of binary classification (predicting one of two possible outcomes) problems:

    Will the customer buy this product or not buy this product?

    Is this email spam or not spam?

    Is this product a book or a farm animal?

    Is this review written by a customer or a robot?

Examples of multiclass classification (predicting one of more than two outcomes) problems:

    Is this product a book, movie, or clothing?

    Is this movie a romantic comedy, documentary, or thriller?

    Which category of products is most interesting to this customer?

Examples of regression classification (predicting a numeric value) problems:

    What will the temperature be in Seattle tomorrow?

    For this product, how many units will sell?

    How many days before this customer stops using the application?

    What price will this house sell for?

#### Additional Reading

- [Hyundai reduces ML model training time for autonomous driving models using Amazon SageMaker](https://aws.amazon.com/blogs/machine-learning/hyundai-reduces-training-time-for-autonomous-driving-models-using-amazon-sagemaker/)
- [Calculating new stats in Major League Baseball with Amazon SageMaker](https://aws.amazon.com/blogs/machine-learning/calculating-new-stats-in-major-league-baseball-with-amazon-sagemaker/)
- [Flagging suspicious healthcare claims with Amazon SageMaker](https://aws.amazon.com/blogs/machine-learning/flagging-suspicious-healthcare-claims-with-amazon-sagemaker/)

#### Complementar reading

- [Statistic-Free Talent Modeling With Neural Player Embeddings](https://global-uploads.webflow.com/5f1af76ed86d6771ad48324b/5ff4ac5dbbab5b7d59e29438_Statistic-Free%20Talent%20Modeling%20With%20Neural%20Player%20Embeddings.pdf)
- [A Novel Anomaly Detection Scheme Based on Principal Component Classifier](https://homepages.laas.fr/owe/METROSEC/DOC/FDM03.pdf)

## Terminology

- A **model** is an extremely generic program, made specific by the data used to train it.
- **Model training algorithms** work through an interactive process where the current model iteration is analyzed to determine what changes can be made to get closer to the goal. Those changes are made and the iteration continues until the model is evaluated to meet the goals.
- **Model inference** is when the trained model is used to generate predictions.
- A continuous (regression) label does not have a discrete set of possible values, which means possibly an unlimited number of possibilities.
- Discrete: A term taken from statistics referring to an outcome taking on only a finite number of values (such as days of the week).
- A label refers to data that already contains the solution.
- Using unlabeled data means you don't need to provide the model with any kind of label or solution while the model is being trained.

## Novos termos

- Bayesian search and hyperparameter optimization (HPO)
- XGBoost algorithm

