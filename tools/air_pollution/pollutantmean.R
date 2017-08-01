DATA_SETS_REPOSITORY <- '../datasets/air_pollution/specdata/'

pollutantmean <- function(directory, pollutant, id = 1:332) {
  airp_data <- data.frame()
  
  for ( i in id ) {
    file_data <- paste(directory, sprintf("%03d", i), '.csv', sep = '')
    airp_data <- rbind(airp_data, read_csv(file_data,
                                           col_types = "cddi"))
    
  }
  
  return(mean(airp_data[[pollutant]], na.rm = TRUE))
}

#print(pollutantmean(DATA_SETS_REPOSITORY, "sulfate", 1:10)) ## 4.064128
#print(pollutantmean(DATA_SETS_REPOSITORY, "nitrate", 70:72)) ## 1.706047
#print(pollutantmean(DATA_SETS_REPOSITORY, "nitrate", 23)) ## 1.280833