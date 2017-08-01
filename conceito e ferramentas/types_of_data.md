# Types of Data Science Questions

Ordem de dificuldade

+ Descriptive
+ Exploratory
+ Inferencial
+ Predctive
+ Causal
+ Mechanistic

Varáveis

+ Qualitativas: País, sexo e tratamento.
+ Quantitativos: peso, altur e pressão sanguínea.

## Descriptive

O método *descriptive* procura sintetizar uma medição em um único conjunto de dados sem se preocupar com a interpretação. A interpretação e o uso das métricas são deixados para o congresso e o público; portanto, não faz parte desse método analítico.

Exemplo:

+ Censo

## Exploratory

Método consiste em manipular de forma rápida os dados, dando-lhe formas para que seja possível encontrar novos padrões ou associações no conjunto de dados, porém correlações não implicam em causalidade entre as variáveis.

## Statistical and inference

Usa um sub conjunto de amostras, individuais, para inferir ou generalizar uma caracteristica sobre a maioria da população. As amostras são sintetizadas através de modelo probabilístico dando relevância a amostras individuais.

Quando observa-se uma correlação ou relacionamento no conjunto de dados, considere um potencial *confunders - variables* associado com ambas as variaveis que são usadas para relacionar a subamostra.

Exemplo: Inferir a expectativa de vida de uma população utilizando os dados relacionados a poluição do Ar na região.

## Prediction and Machine Learning

A idéia da predição é usar amostras da população, inferências, e criar um conjunto de dados de treinamento. Dividimos os dados em um conjunto de treino e validação, respectivamente 70% e 30%. A estimativa da taxa de erro do algoritmo é realizado somente quando todas as partes do treino concluirem, então usaremos os dados da validação para fazer a estimativa.

No geral, é a coleção de dados que aperfeiçoa a precisão mais do o algoritmo de predição em si.

Predição é sobre vantagens e desvantagens:

+ Interpretabilidade vs Precisão
+ Velocidade vs Precisão
+ Simplicidade vs Precisão
+ Escalabilidade vs Precisão

### Binary out

https://en.wikipedia.org/wiki/Template:SensSpecPPVNPV

Termos: *The unreasonable effectiveness of data*

## Causality

É o padrão que analisa dados, combinando um modelo específico de experimentos como o estudo aleatório com técninas de inferência estatística. Faça testes com gráficos para garantir que cada sujeito esteja distríbuido em seu respectivo grupo, incluindo valores ignorados.

Análise de dados casuais procura identificar a média entre às variáveis com mais ruídos.

Um comum erro é realizar uma pesquisa que busca por uma correlação ou associação entre medições em um estudo não aleatório, então interpretando-os que a correlçaão é um relacionamento de causalidade.
