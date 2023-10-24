#' Get codons
#'
#' @param sequence Instert string of a DNA or RNA sequence
#' @param start The first base pair in the sequence to be included
#'
#' @return A vector of strings of codons in the sequence
#' @export
#'
#' @examples
get_codons <- function(sequence, start = 1){
  count_bp <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = count_bp-3+1, by = 3),
                      last = seq(from = 3+start-1, to = count_bp, by = 3))
  return(codons)
}
