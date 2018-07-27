library(igraph)

numeros <- as.character(read.csv(file="numeros.txt", header=FALSE)[, 1])

nchar(numeros[2])

numeros <- numeros[1:100]
numeros <- nchar(gsub(" ", "", numeros))

matriz <- matrix(0, ncol=length(numeros), nrow=length(numeros))

for (j in 1:nrow(matriz)) {
  matriz[j, numeros[j]] <- 1
}

grafo <- graph_from_adjacency_matrix(matriz)

plot(grafo, edge.arrow.size=0.3, vertex.size=10, vertex.label.cex=0.7, curved=FALSE)

