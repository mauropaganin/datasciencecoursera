best <- function(state, outcome) {
  ## Read outcome data
  outcomeVect <- NULL
  fileOutcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  fileHospital <- read.csv("hospital-data.csv", colClasses = "character")
 
  outcomeVect <- subset(fileOutcome, select = c("State","Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"))
  outcomeVect
  
  ## Check that state and outcome are valid
  ## Return hospital name in that state with lowest 30-day death
  ## rate
}
