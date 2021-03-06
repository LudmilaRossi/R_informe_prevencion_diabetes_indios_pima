## Para este informe, el método más adecuado es el de “Árbol de decisión" porque es ideal para 
## descubrir cosas nuevas, en este caso, veremos qué fenómenos se manifiestan en la comunidad 
## para que haya un alto índice de diabetes y de esta manera, establecer estrategias para realizar 
##un plan de prevención. 

install.packages("mlbench")

library('mlbench') #cargamos las librerias para ver los graficos
library('caret')
library('ggplot2')
library('rpart.plot')
data(PimaIndiansDiabetes) #Base de datos

table(is.na(PimaIndiansDiabetes)) #filtrar los datos NA


# pasamos la var respuesta a factor
PimaIndiansDiabetes$diabetes <- as.factor(PimaIndiansDiabetes$diabetes)
#Subset the data to a training set and testing set based on the chd variable in the data set
#p: the percentage that goes to training
#nTrain <- createDataPartition(y = segmentationOriginal$Case, list = FALSE)

#Train <- createDataPartition(y=PimaIndiansDiabetes$diabetes, p=0.7)
#itrain <- PimaIndiansDiabetes[Train,]
#test <- PimaIndiansDiabetes[-Train,]
mod_arbol <-train(diabetes ~ ., method="rpart", data=PimaIndiansDiabetes)
print(mod_arbol$finalModel)
rpart.plot(mod_arbol$finalModel)

#Verificamos las correlaciones
sub=data.frame(PimaIndiansDiabetes$glucose,PimaIndiansDiabetes$pregnant)

cor(PimaIndiansDiabetes$glucose,PimaIndiansDiabetes$pregnant)
cor(PimaIndiansDiabetes[,1:8])

#GRAFICOS DE HISTOGRAMA
hist(PimaIndiansDiabetes$pregnant)
hist(PimaIndiansDiabetes$age)
