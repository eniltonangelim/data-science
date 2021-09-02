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

#### Terminology

- A **model** is an extremely generic program, made specific by the data used to train it.
- **Model training algorithms** work through an interactive process where the current model iteration is analyzed to determine what changes can be made to get closer to the goal. Those changes are made and the iteration continues until the model is evaluated to meet the goals.
- **Model inference** is when the trained model is used to generate predictions.
- A continuous (regression) label does not have a discrete set of possible values, which means possibly an unlimited number of possibilities.
- Discrete: A term taken from statistics referring to an outcome taking on only a finite number of values (such as days of the week).
- A label refers to data that already contains the solution.
- Using unlabeled data means you don't need to provide the model with any kind of label or solution while the model is being trained.

#### Additional Reading

- [Hyundai reduces ML model training time for autonomous driving models using Amazon SageMaker](https://aws.amazon.com/blogs/machine-learning/hyundai-reduces-training-time-for-autonomous-driving-models-using-amazon-sagemaker/)
- [Calculating new stats in Major League Baseball with Amazon SageMaker](https://aws.amazon.com/blogs/machine-learning/calculating-new-stats-in-major-league-baseball-with-amazon-sagemaker/)
- [Flagging suspicious healthcare claims with Amazon SageMaker](https://aws.amazon.com/blogs/machine-learning/flagging-suspicious-healthcare-claims-with-amazon-sagemaker/)

#### Complementar reading

- [Statistic-Free Talent Modeling With Neural Player Embeddings](https://global-uploads.webflow.com/5f1af76ed86d6771ad48324b/5ff4ac5dbbab5b7d59e29438_Statistic-Free%20Talent%20Modeling%20With%20Neural%20Player%20Embeddings.pdf)
- [A Novel Anomaly Detection Scheme Based on Principal Component Classifier](https://homepages.laas.fr/owe/METROSEC/DOC/FDM03.pdf)

### Step 2 - Build a Dataset

- The four aspects of working with Data

|  A  |  B  |  C  |  D  |
|:---:|:---:|:---:|:---:|
|Data Collection| Data Inpsection | Summary Statistics | Data Visualization|

#### Data Collection

> Does the data you've collected match the machine learning task and problem you have defined? 

Data collection can be as straightforward as running the appropriate SQL queries or as complicated as building custom web scraper applications to collect data for your project. 

#### Data Inpsection

The quality of your data will ultimately be the largest factor that affects how well you can expect your model to perform. As you inspect your data, look for:

- Outliers
- Missing or incomplete values
- Data that needs to be transformed or preprocessed so it's in the correct format to be used by your model

#### Summary Statistics

Now that you have some data in hand it is a good best practice to check that your data is in line with the underlying assumptions of your chosen machine learning model. 
With many statistical tools, you can calculate things like the mean, inner-quartile range (IQR), and standard deviation. These tools can give you insight into the scope, scale, and shape of the dataset.

#### Data Visualization

You can use data visualization to see outliers and trends in your data and to help stakeholders understand your data.

#### Terminology

- **Impute** is a common term referring to different statistical tools which can be used to calculate missing values from your dataset.
- **Outliers**  are data points that are significantly different from others in the same sample.

#### Additional reading

- [The sklearn library has many examples and tutorials, such as this example demonstrating outlier detection on a real dataset.](https://scikit-learn.org/0.24/auto_examples/applications/plot_outlier_detection_wine.html)

### Step 3 - Model Training

#### Splitting your Dataset

The first step in model training is to randomly split the dataset. This allows you to keep some data hidden during training, so that data can be used to evaluate your model before you put it into production.

Splitting your dataset gives you two sets of data:

- Training dataset: The data on which the model will be trained. Most of your data will be here. Many developers estimate about 80%.
- Test dataset: The data withheld from the model during training, which is used to test how well your model will generalize to new data.

#### Model Training Terminology

> The model training algorithm iteratively updates a model's parameters to minimize some loss function.

- **Model parameters**: Model parameters are settings or configurations the training algorithm can update to change how the model behaves. Depending on the context, you’ll also hear other more specific terms used to describe model parameters such as `weights` and `biases`. Weights, which are values that change as the model learns, are more specific to neural networks.
- **Loss function**: A loss function is used to codify the model’s distance from this goal. For example, if you were trying to predict a number of snow cone sales based on the day’s weather, you would care about making predictions that are as accurate as possible. So you might define a loss function to be “the average distance between your model’s predicted number of snow cone sales and the correct number.”

#### Advice From the Experts

Remember the following advice when training your model.


1. Practitioners often use machine learning frameworks that already have working implementations of models and model training algorithms. You could implement these from scratch, but you probably won't need to do so unless you’re developing new models or algorithms.
2. Practitioners use a process called model selection to determine which model or models to use. The list of established models is constantly growing, and even seasoned machine learning practitioners may try many different types of models while solving a problem with machine learning.
3. Hyperparameters are settings on the model which are not changed during training but can affect how quickly or how reliably the model trains, such as the number of clusters the model should identify.
4. Be prepared to iterate.

Pragmatic problem solving with machine learning is rarely an exact science, and you might have assumptions about your data or problem which turn out to be false. Don’t get discouraged. Instead, foster a habit of trying new things, measuring success, and comparing results across iterations.

##### Linear models

One of the most common models covered in introductory coursework, linear models simply describe the relationship between a set of input numbers and a set of output numbers through a linear function (think of y = mx + b or a line on a x vs y chart).

Classification tasks often use a strongly related logistic model, which adds an additional transformation mapping the output of the linear function to the range [0, 1], interpreted as “probability of being in the target class.” Linear models are fast to train and give you a great baseline against which to compare more complex models. A lot of media buzz is given to more complex models, but for most new problems, consider starting with a simple model.

##### Tree-based models

Tree-based models are probably the second most common model type covered in introductory coursework. They learn to categorize or regress by building an extremely large structure of nested if/else blocks, splitting the world into different regions at each if/else block. Training determines exactly where these splits happen and what value is assigned at each leaf region.

For example, if you’re trying to determine if a light sensor is in sunlight or shadow, you might train tree of depth 1 with the final learned configuration being something like if (sensor_value > 0.698), then return 1; else return 0;. The tree-based model XGBoost is commonly used as an off-the-shelf implementation for this kind of model and includes enhancements beyond what is discussed here. Try tree-based models to quickly get a baseline before moving on to more complex models.

##### Deep learning models

Extremely popular and powerful, deep learning is a modern approach based around a conceptual model of how the human brain functions. The model (also called a neural network) is composed of collections of neurons (very simple computational units) connected together by weights (mathematical representations of how much information to allow to flow from one neuron to the next). The process of training involves finding values for each weight.

Various neural network structures have been determined for modeling different kinds of problems or processing different kinds of data.

A short (but not complete!) list of noteworthy examples includes:

- FFNN: The most straightforward way of structuring a neural network, the Feed Forward Neural Network (FFNN) structures neurons in a series of layers, with each neuron in a layer containing weights to all neurons in the previous layer.
- CNN: Convolutional Neural Networks (CNN) represent nested filters over grid-organized data. They are by far the most commonly used type of model when processing images.
- RNN/LSTM: Recurrent Neural Networks (RNN) and the related Long Short-Term Memory (LSTM) model types are structured to effectively represent for loops in traditional computing, collecting state while iterating over some object. They can be used for processing sequences of data.
- Transformer: A more modern replacement for RNN/LSTMs, the transformer architecture enables training over larger datasets involving sequences of data.

#### Machine Learning Using Python Libraries

- For more classical models (linear, tree-based) as well as a set of common ML-related tools, take a look at `scikit-learn. The web documentation for this library is also organized for those getting familiar with space and can be a great place to get familiar with some extremely useful tools and techniques.
- For deep learning, `mxnet`, `tensorflow`, and `pytorch`  are the three most common libraries. For the purposes of the majority of machine learning needs, each of these is feature-paired and equivalent.

#### Terminology

- **Hyperparameters** are settings on the model which are not changed during training but can affect how quickly or how reliably the model trains, such as the number of clusters the model should identify.
- A **loss function** is used to codify the model’s distance from this goal
- **Training dataset**: The data on which the model will be trained. Most of your data will be here.
- **Test dataset**: The data withheld from the model during training, which is used to test how well your model will generalize to new data.
- **Model parameters** are settings or configurations the training algorithm can update to change how the model behaves.

#### Additional reading


- The Wikipedia entry on the [bias-variance](https://en.wikipedia.org/wiki/Bias%E2%80%93variance_tradeoff) trade-off can help you understand more about this common machine learning concept.
- In this [AWS Machine Learning](https://aws.amazon.com/blogs/machine-learning/build-a-model-to-predict-the-impact-of-weather-on-urban-air-quality-using-amazon-sagemaker/) blog post, you can see how to train a machine-learning algorithm to predict the impact of weather on air quality using Amazon SageMaker.


## Novos termos

- Bayesian search and hyperparameter optimization (HPO)
- XGBoost algorithm

