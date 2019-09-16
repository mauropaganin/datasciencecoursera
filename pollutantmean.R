pollutantmean <- function(directory, pollutant, id = 1:332){
 
  vect <- c()
  for(i in id){
    
    fileNcsv <- read.csv(paste0(getwd(), "/", directory,"/",
                                formatC(i, width=3, flag="0"), ".csv")) 
    
    #subset lo vede come dataframe, con il secondo metodo come numeric
    #vect <- c(vect, subset(fileNcsv["nitrate"], !is.na(nitrate)))
    vect <- c(vect, fileNcsv[,pollutant])
  
  }
  
  pollutant_mean <- mean(vect,na.rm=TRUE)
  pollutant_mean
}
  