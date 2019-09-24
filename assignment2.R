

complete <- function(directory,id){
  setwd(paste("C:/D drive/Digital strategy/field data/coursera/",directory,sep = "", collapse = NULL))  
  k <- dir()
  length(id)
  p <- 0
  for(i in 1:length(id)) {
    n <- read.csv(k[[id[i]]])
    n <- na.omit(n)
    p <- p+1
    
    if(p==1){

      nobs <- length(n[,1])
      
      ids <- id[i] 
      
          }else{
      
      nobs <- c(nobs,length(n[,1]))
      ids <- c(ids,id[i])
      
      
    }
    
   
  
      }

  data_summary <- data.frame(ids,nobs)
    data_summary 
  }

