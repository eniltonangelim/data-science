#Autor: Enilton Angelim
library(dplyr)
source('~/workspace/data-science/tools/hospital/helper.R')

## Const
DATA_REPOSITORY_OUTCOME_MEASURE='/home/enilton/workspace/data-science/datasets/hospital_quality/outcome-of-care-measures.csv'

rankhospital <- function (state, outcome, num = "best") {

  ## Read outcome data
  outcome_measure <-read.csv(DATA_REPOSITORY_OUTCOME_MEASURE,
                             colClasses = 'character')
  
  ## Check that state and outcome are valid
  outcome <- outcome_helper(state, outcome)
  
  ## Return hospital name in that state with the given rank
  ## 30-day death rate
  outcome_measure[, outcome$indice] <- suppressWarnings(
    as.numeric(outcome_measure[, outcome$indice])
  )

  ## Omit na values
  outcome_measure <- na.omit(outcome_measure)
  ## Select columns by regex
  data <- select(outcome_measure, matches(outcome$match, ignore.case = TRUE))
  ## Filter State and order by Rate and then Hospital Name
  data <- filter(data, data$State == state)
  data <- data[order( data[3], data$Hospital.Name), ]
  ## Rank table
  rank <- data.frame( Hospital.Name = data$Hospital.Name, Rate = data[,3],
                      Rank = 1:nrow(data), row.names = NULL )
  
  if ( num == 'best' ) {
    num <- 1
  } else if ( num == 'worst' ) {
    num <- nrow(rank)
  } else if (num > nrow(rank)) {
    return(NA)
  } else if (!is.numeric(num)) {
    return(NA)
  }
  
  return(rank$Hospital.Name[ rank$Rank == num ])
  
}

###
# Test
##############################
## > rankhospital("TX", "heart failure", 4)
#  [1] DETAR HOSPITAL NAVARRO
## > rankhospital("MD", "heart attack", "worst")
#  [1] HARFORD MEMORIAL HOSPITAL
## > rankhospital("MN", "heart attack", 5000)
#  [1] NA