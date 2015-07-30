## @knitr iris_set

data ("iris")
datos <- iris

## NAs by coercion for string in species
distancia <- dist(datos) 
dist(datos,"manhattan")
length(dist(datos)) ## = nrow(datos)*(nrow(datos)-1)/2

cluster <- hclust(distancia)
plot(cluster)

identify(cluster,function(i) print(table(iris[i,5])))
identify(cluster,function(i) print(length(i)))


## @knitr mtcars_set

data ("mtcars")
datos <- mtcars

## NAs by coercion for string in species
distancia <- dist(datos) 
dist(datos,"manhattan")
length(dist(datos)) ## = nrow(datos)*(nrow(datos)-1)/2

cluster <- hclust(distancia)
plot(cluster)

identify(cluster,function(i) print(table(iris[i,5])))
identify(cluster,function(i) print(length(i)))
