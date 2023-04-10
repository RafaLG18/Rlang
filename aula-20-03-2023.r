library(dplyr)

# funcao para ver os dados 
glimpse(iris)

# observa as primeiras linhas
head(iris)

# observa as linhas finais
tail(iris)

class(iris)

# pegou a tabela e converteu nunma tibble
iris_tbl <- as_tibble(iris)
iris_tbl

## Manipular tabela (tibble)

# Select columns
select(iris_tbl,Sepal.Length)

# Filter column data
filter(iris_tbl,Sepal.Length > 3.5)

# This is pipe %>%, same logic of |

# Do both a the same time
iris_tbl %>% 
  filter(Sepal.Length>3.5,Species == "setosa") %>% 
    select(Sepal.Length,Species)

# Doing changes in the table
iris_tbl %>% 
  # Changing columns
  mutate(Sepal.Length =Sepal.Length*2) %>% 
  # Destroy all columns, and return the only that you want 
  transmute(Sepal.Length =Sepal.Length*2)

# Calculate mean, median 
iris_tbl %>% 
  # Grouping by column
  group_by(Species) %>% 
  # Calculate median, mean by column that was grouped
  summarise(
    media_petala=mean(Petal.Length),
    mediana_petala=median(Petal.Length)
  )