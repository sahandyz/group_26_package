#' DNA to RNA
#'
#' This function replaces all of 'T' with 'U' in a given DNA chain vector.
#'
#' @param dna_str A string vector in which you want to replace 'T' with 'U'.
#'
#' @return rna_str A string vector with all 'T's replaced by 'U's.
#'
#' @examples
#' replace_T_with_U("TACGT")  # Returns "UACGU"
#' replace_T_with_U("TTTTT")  # Returns "UUUUU"
#' replace_T_with_U("AGCTA")  # Returns "AGCUA"
#'
#' @export
replace_T_with_U <- function(replace_T_with_U_2){
  replace_T_with_U_3 <- gsub("T", "U", replace_T_with_U_2)
  return(replace_T_with_U_3)
}
