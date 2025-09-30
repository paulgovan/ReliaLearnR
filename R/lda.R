
#' Launch the Life Data Analysis Tutorial
#'
#' This function launches an interactive tutorial for life data analysis.
#'
#' @import learnr WeibullR
#' @export
#' @seealso \url{https://paulgovan.github.io/ReliaLearnR/}
#' @return This function does not return a value.
#' @examples
#' if (interactive()) {
#'   lda()
#' }
lda <- function() {
  learnr::run_tutorial("lda", package = "ReliaLearnR")
}
