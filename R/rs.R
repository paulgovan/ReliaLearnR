
#' Launch the Repairable Systems Analysis Tutorial
#'
#' This function launches an interactive tutorial on Repairable Systems Analysis.
#' @importFrom learnr run_tutorial
#' @import ReliaGrowR
#' @export
#' @seealso \url{https://paulgovan.github.io/ReliaLearnR/}
#' @return This function does not return a value.
#' @examples
#' if (interactive()) {
#'   rs()
#' }
rs <- function() {
  learnr::run_tutorial("rs", package = "ReliaLearnR")
}
