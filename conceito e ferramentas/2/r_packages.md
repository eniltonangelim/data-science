# R packages

```
> a <- available.packages() ## Obtem a lista de pacotes disponiveis
> head(rownames(a),50) ## Exibe os cinquenta primeiros pacotes

> install.packages("slidify")

> install.packages(c("slidify","ggplot2","devtools"))
```

Usando outra fonte de pacotes

```
> source("http://bioconductor.org/biocLite.R")
> biocLite();

> biocLite(c("GenomicFeatures", "AnnotationDbi"))
```

Carregar a lib para o R

```
library(ggplot2)
```

