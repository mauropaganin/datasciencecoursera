complete <- function(directory, id = 1:332){
  
  ids <- c()
  nobs <- c()
  for(i in id){
    
    fileNcsv <- read.csv(paste0(getwd(), "/", directory,"/",
                                formatC(i, width=3, flag="0"), ".csv")) 
    
    ids <- c(ids, i)
    completeNNA <- subset(fileNcsv, !is.na(nitrate) & !is.na(sulfate))
    nobs <- c(nobs, nrow(completeNNA))
    
  }
  dt_frame <- data.frame(ids, nobs)
  dt_frame
 
}