# implorte complete.R
source('~/workspace/data-science/tools/specdata/complete.R')

#Write a function that takes a directory of data files and 
#a threshold for complete cases and calculates the correlation
#between sulfate and nitrate for monitor locations where the
#number of completely observed cases (on all variables)
#is greater than the threshold. The function should return
#a vector of correlations for the monitors that meet the
#threshold requirement. If no monitors meet the threshold requirement,
#then the function should return a numeric vector of length 0.
#A prototype of this function follows

corr <- function( directory, threshold = 0, id = 1:332 ){
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations  
  corr <- numeric(0)
  
  for (i in id) {
    file_path <- paste(directory, sprintf("%03d", i), '.csv', sep = '')
    airp_data <- na.omit(read_csv(file_path, col_types = "cddi"))
    
    ##complete.R
    complete_nobs <- complete(directory, i)
    if ( complete_nobs$nobs > threshold ) {
      corr <- append(corr, cor(airp_data$sulfate, airp_data$nitrate))
    }
  }
  
  return(corr)
  #print(head(corr))
  #print(summary(corr))
  
}


#corr(DATA_SETS_REPOSITORY, 150)