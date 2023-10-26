#' Get codons
#'
#' @param sequence Instert string of an RNA sequence
#' @param start The first base pair in the sequence to be included
#'
get_codons <- function(rna_string, start = 1){
  count_bp <- nchar(rna_string)
  codons <- substring(rna_string,
                      first = seq(from = start, to = count_bp-3+1, by = 3),
                      last = seq(from = 3+start-1, to = count_bp, by = 3))}
#'
#' @return A vector of strings of codons in the sequence
#' @export
#'


