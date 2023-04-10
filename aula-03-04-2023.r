# AULA GGPLOT2 ----

# 1.0 Leitura dos pacotes ----
library(ggplot2)
library(dplyr)

# 2.0 Leitura do arquivo ----
iris_tbl <- as_tibble(iris)

# 3.0 Usando o ggplot ----
ggplot(iris_tbl)
