
#' Launch the RAM Analysis Tutorial
#'
#' This function launches an interactive tutorial on Reliability, Availability,
#' and Maintainability (RAM) analysis.
#' @importFrom learnr run_tutorial
#' @export
#' @seealso \url{https://paulgovan.github.io/ReliaLearnR/}
#' @return This function does not return a value.
#' @examples
#' if (interactive()) {
#'   ram()
#' }
ram <- function() {
  learnr::run_tutorial("ram", package = "ReliaLearnR")
}
