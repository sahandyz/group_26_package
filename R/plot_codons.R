
#' Plot codon count, using
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @param codon_string A string of codons (one letter), you want to plot
#'
#' @return Returns an object containing a plot
#' @export
#'
#' @examples codon_string = "MRTYVCIVC"
#' plot_codons(codon_string)
plot_codons <- function(codon_string){
  # Takes a string of codons, converst it into a vector with codon names, and returns a vector with unique vector names
  unique_codons <- codon_string |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  #Counts the amount of times each codon is found in the codon_string
  counts <- sapply(unique_codons, function(amino_acid) stringr::str_count(string = codon_string, pattern =  amino_acid)) |>
    as.data.frame()

  #Gives the counts data frame columns names according to the counts, and row names according to the name of the codon
  colnames(counts) <- c("Counts")
  counts[["codon_string"]] <- rownames(counts)

  #Plots the count of the codon.
  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = codon_string, y = Counts, fill = codon_string)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot)
}
