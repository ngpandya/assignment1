corr <- function(directory, threshold = 0) {
  directory <- "specdata"
  setwd(paste("C:/D drive/Digital strategy/field data/coursera/",directory,sep = "", collapse = NULL))  
  corr_vect <- NULL

  for (i in 1:332) {
    if (i < 10) {
      dat <- read.csv(paste("00",as.character(i),".csv", sep = ""), 
                      as.is = T, 
                      header = T)

      }
    else if (i < 100) {
      dat <- read.csv(paste("0",as.character(i),".csv", sep = ""), 
                      as.is = T, 
                      header = T)
    }
    else {
      dat <- read.csv(paste(as.character(i),".csv", sep = ""), 
                      as.is = T, 
                      header = T)
    }
    
    data <- dat[complete.cases(dat),]
    if (nrow(data) > threshold) {
      corr_vect <- c(corr_vect, cor(data[,"sulfate"], data[, "nitrate"]))
    }
  }
  
  return(corr_vect)
}