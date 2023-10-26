#' Codons to Amino Acid Sequence
#'
#' @param codons a vector of 3-letter codons as strings
#'
#' @return A collapsed amino acid sequence as a string
#' @export
#'
codons_to_aa_sequence <- function(codons){
  codon_to_aa <- paste0(codon_table[codons], collapse = "")
  return(codon_to_aa)
}
