DATA_SETS_REPOSITORY <- '../datasets/air_pollution/specdata/'

#Write a function that reads a directory full of files and
#reports the number of completely observed cases in each data file.
#The function should return a data frame where the first column is
#the name of the file and the second column is the
#number of complete cases. A prototype of this function follows

complete <- function(directory, id = 1:332){
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  complete_sum_case <- data.frame( id = id, nobs = FALSE)
  airp_data <- data.frame()
  
  for (i in id) {
    file_path <- paste(directory, sprintf("%03d", i), '.csv', sep = '')
    airp_data <- read_csv(file_path, col_types = "cddi")
    #Replace values in nobs column
    complete_sum_case$nobs[complete_sum_case$id == i &
                             complete_sum_case$nobs == FALSE] <- sum(
                                   complete.cases(airp_data)
                               )
  }
  
  complete_sum_case
  
}

#print(complete(DATA_SETS_REPOSITORY, 1))
#print(complete(DATA_SETS_REPOSITORY, c(2, 4, 8, 10, 12)))
#print(complete(DATA_SETS_REPOSITORY, 30:25))
#print(complete(DATA_SETS_REPOSITORY, 3))