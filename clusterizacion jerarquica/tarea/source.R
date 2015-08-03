setwd("HCluster/Data")

data <- data.frame()

for(i in dir()){
  data<- read.csv2(i,header = T,sep = ",",dec = ".")
  plot(data$X,data$Y,col=data$class, main=i,xlab="X", ylab="Y")
}
rm("data")


metodos <- c("ward.D", "ward.D2", "single", "complete", "average", "mcquitty","median","centroid")

for(i in dir()){
  for(j in metodos){
    data <- read.csv2(i,header = T,sep = ",",dec = ".")
    clust <- hclust(data[-3],method = j)
    identify(clust,function(i) print(table(data[i,3])))
  }
}


