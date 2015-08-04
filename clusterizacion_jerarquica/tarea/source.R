setwd("HCluster/Data")


data <- data.frame()
aux <- data.frame()

for(i in dir()){
  aux <- read.csv2(i,header = T,sep = ",",dec = ".")
  names(aux)<- c("index","x","y","class")
  id <- rep(substr(i,nchar(i)-4,nchar(i)-4),nrow(aux))
  aux <- cbind(id,aux)
  data <- rbind(data,aux)
  aux <- NULL
}
data
rm("data","aux")

metodos <- c("ward.D", "ward.D2", "single", "complete", "average", "mcquitty","median","centroid")

for(i in dir()){
  for(j in metodos){
    data <- read.csv2(i,header = T,sep = ",",dec = ".")
    clust <- hclust(data[-3],method = j)
    identify(clust,function(i) print(table(data[i,3])))
  }
}


