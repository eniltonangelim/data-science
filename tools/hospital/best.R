# Autor: Enilton Angelim
library(dplyr)
source('~/workspace/data-science/tools/hospital/helper.R')

## Const
DATA_REPOSITORY_OUTCOME_MEASURE='/home/enilton/workspace/data-science/datasets/hospital_quality/outcome-of-care-measures.csv'

#outcomes <- read.csv(DATA_REPOSITORY_OUTCOME_MEASURE, colClasses = 'character')
#mortality_data <- na.omit(as.numeric(outcomes[, 11]))
#hist(mortality_data, xlab = 'Days', ylab = 'Rates')

best <- function (state, outcome) {
  ## Read outcome data
  outcome_measure <-read.csv(DATA_REPOSITORY_OUTCOME_MEASURE, colClasses = 'character')

  ## Check  that state and outcome are valid
  outcome <- outcome_helper(state, outcome)
  
  ## Return hospital name in that state with lowest 30-day death
  ## rate
  ## Outcome coercion
  outcome_measure[, outcome$indice] <- suppressWarnings(
      as.numeric(outcome_measure[, outcome$indice])
    )
  ## Omit na values
  outcome_measure <- na.omit(outcome_measure)
  ## Select columns by regex
  data <- select(outcome_measure, matches(outcome$match, ignore.case = TRUE))
  ## Filter State
  data <- filter(data, data$State == state)
  ## Filter hospital with lowest mortality 
  data <- filter(data, data[3] == min(data[3]))
  ## Order by Hospital name
  data <- data[order(data$Hospital.Name),]
  return(data$Hospital.Name)
}

###
## Test
#################################################################################################
### > best('TX', 'heart attack')
#   [1] "CYPRESS FAIRBANKS MEDICAL CENTER"
### > best('TX', 'heart failure')
#   [1] "FORT DUNCAN MEDICAL CENTER"
### > best('MD', 'heart attack')
#   [1] "JOHNS HOPKINS HOSPITAL, THE"
### > best('MD', 'pneumonia')
#   [1] "GREATER BALTIMORE MEDICAL CENTER"
### > best('BB', 'heart attack')
#   Error in best("BB", "heart attack") : State invalid!
### > best('NY', 'hert attack')
#   Erros durante o embrulho: Outcome invalid! Use: "heart attack", "heart failure" or "pneumonia