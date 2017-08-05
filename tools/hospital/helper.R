outcome_helper <- function (state = 'TX', outcome = NULL) {

  if(! state %in% outcome_measure$State){
    stop("State invalid!")
  }
  
  if ( outcome == "heart attack" ) {
    return(list(indice = 11, match = "^(Sta|Hos.*death.*rates.*heart.attack|Hos.*name)"))
  } else  if ( outcome == "heart failure" ) {
    return(list(indice = 17, match = "^(Sta|Hos.*death.*rates.*heart.failure|Hos.*name)"))
  } else  if ( outcome == "pneumonia" ) {
    return(list(indice = 23, match = "^(Sta|Hospital.*death.*rates.*pneumonia|Hos.*name)"))
  } else {
    stop('Outcome invalid! Use: "heart attack", "heart failure" or "pneumonia')
  }
  
}
