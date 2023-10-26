#' Title
#' Create a DNA sequence from A C G C with defined lenght and repeating values
#'
#' @param string_length
#' Desired length of sequence (int)
#'
#' @return
#' A DNA sequence (str(?))
#'
#' @export
#'
#'
dna_sequence <- function(string_length){
  dna_string <- sample(c("A", "T", "G", "C"), size = string_length, replace = TRUE)
  collapse_string <- paste0(dna_string, collapse = "")
  return(collapse_string)
}

