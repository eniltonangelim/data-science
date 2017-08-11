library(dplyr)
source('~/workspace/data-science/tools/hospital/helper.R')

## Const
DATA_REPOSITORY_OUTCOME_MEASURE='/home/enilton/workspace/data-science/datasets/hospital_quality/outcome-of-care-measures.csv'

# Write a function called rankall that takes two arguments: an outcome name (outcome) and a hospital ranking
# (num). The function reads the outcome-of-care-measures.csv file and returns a 2-column data frame
# containing the hospital in each state that has the ranking specified in num. For example the function call
# rankall("heart attack", "best") would return a data frame containing the names of the hospitals that
# are the best in their respective states for 30-day heart attack death rates. The function should return a value
# for every state (some may be NA). The first column in the data frame is named hospital, which contains
# the hospital name, and the second column is named state, which contains the 2-character abbreviation for
# the state name. Hospitals that do not have data on a particular outcome should be excluded from the set of
# hospitals when deciding the rankings.
# Handling ties. The rankall function should handle ties in the 30-day mortality rates in the same way
# that the rankhospital function handles ties.

rankall <- function(outcome, num = "best") {
  ## Read outcome data
  outcome_measure <-read.csv(DATA_REPOSITORY_OUTCOME_MEASURE,
                             colClasses = 'character')
  ## Check that num and outcome are valid
  outcome <- outcome_helper(outcome=outcome)
  ## Return hospital name in that state with the given rank
  ## 30-day death rate
  outcome_measure[, outcome$indice] <- suppressWarnings(
    as.numeric(outcome_measure[, outcome$indice])
  )
  ## Omit na values
  outcome_measure <- na.omit(outcome_measure)
  ## For each state, find the hospital of the given rank
  ## Select columns by regex
  data <- select(outcome_measure, matches(outcome$match, ignore.case = TRUE))
  ## Filter State and order by Rate and then Hospital Name
  data.states <- unique(data$State)
  data.states <- data.states[order(data.states)]
  data <- data[order( data[3], data$Hospital.Name), ]
  ## Rank table
  rank <- data.frame( hospital = FALSE, state = data.states, 
                      row.names = data.states )
  rank$hospital <- sapply(data.states, function(s){
    data.state <- filter(data, data$State == s)
    num <- ifelse(num == 'best', 1, num)
    num <- ifelse(num == 'worst', nrow(data.state) , num)
    return(data.state[num,1])
  })
  ## Return a data frame with the hospital names and the
  ## (abbreviated) state name
  return(rank)
}

## head(rankall("heart attack", 20), 10))
#                               hospital state
#AK                                  NA    AK
#AL      D W MCMILLAN MEMORIAL HOSPITAL    AL
#AR   ARKANSAS METHODIST MEDICAL CENTER    AR
#AZ JOHN C LINCOLN DEER VALLEY HOSPITAL    AZ
#CA               SHERMAN OAKS HOSPITAL    CA
#CO            SKY RIDGE MEDICAL CENTER    CO
#CT             MIDSTATE MEDICAL CENTER    CT
#DC                                  NA    DC
#DE                                  NA    DE
#FL      SOUTH FLORIDA BAPTIST HOSPITAL    FL
## tail(rankall("pneumonia", 'worst'), 3)
#                                      hospital state
#WI MAYO CLINIC HEALTH SYSTEM - NORTHLAND, INC    WI
#WV                     PLATEAU MEDICAL CENTER    WV
#WY           NORTH BIG HORN HOSPITAL DISTRICT    WY
## tail(rankall("heart failure"), 10)
#                                                           hospital state
#TN                         WELLMONT HAWKINS COUNTY MEMORIAL HOSPITAL    TN
#TX                                        FORT DUNCAN MEDICAL CENTER    TX
#UT VA SALT LAKE CITY HEALTHCARE - GEORGE E. WAHLEN VA MEDICAL CENTER    UT
#VA                                          SENTARA POTOMAC HOSPITAL    VA
#VI                            GOV JUAN F LUIS HOSPITAL & MEDICAL CTR    VI
#VT                                              SPRINGFIELD HOSPITAL    VT
#WA                                         HARBORVIEW MEDICAL CENTER    WA
#WI                                    AURORA ST LUKES MEDICAL CENTER    WI
#WV                                         FAIRMONT GENERAL HOSPITAL    WV
#WY                                        CHEYENNE VA MEDICAL CENTER    WY