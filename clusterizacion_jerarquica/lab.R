## @knitr iris_set

data ("iris")
datos <- iris

## NAs by coercion for string in species
distancia <- dist(datos[,-5]) 
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

## @knitr @cut_tree

dendrograma <- as.dendrogram(cluster)
corte <- cut(dendrograma,h=3)$upper
plot(corte, main = "Corte con altura 3")

table(cutree(cluster, h=3))## h altura , k= k clusters

filas <- cutree(cluster, h=3)
table(iris[filas,5])



## @knitr centroid

cluster <- hclust(distancia,method = "centroid")


## @knitr median

cluster <- hclust(distancia,method = "median")
