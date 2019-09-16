corr <- function(directory, threshold = 0){
  
  completes = complete(directory, 1:332)
  completes_above_threshold = subset(completes, nobs > threshold )
  
  completes_above_threshold
  
  vect <- vector()
  for(i in completes_above_threshold$id){
    fileNcsv <- read.csv(paste0(getwd(), "/", directory,"/",
                                formatC(i, width=3, flag="0"), ".csv")) 
    
    completeNNA <- subset(fileNcsv, !is.na(nitrate) & !is.na(sulfate))
    count = nrow(completeNNA)
    
    if(count > threshold){
      vect = c(vect, cor(completeNNA$nitrate, completeNNA$sulfate))
    }
    
  }
  vect
}
