rm(list=ls())

pollutantmean <- function(directory,pollutant,id){
  p <- 0
  avg <-0
  setwd(paste("C:/D drive/Digital strategy/field data/coursera/",directory,sep = "", collapse = NULL))  
  k <- dir()
  
  for(i in id) {
    n <- read.csv(k[[i]])
   
    p <- p+1 
    
    if(p==1){
    avg <- n
    }else{
      avg  <- rbind(avg,n)
      
    }
    
    
    
      }

    s <- which(colnames(avg)==pollutant) 
    mean(avg[,s],na.rm = TRUE)


  }
