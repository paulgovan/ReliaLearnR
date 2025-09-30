
#' Launch the Reliability Testing Tutorial
#'
#' This function launches the Reliability Testing tutorial
#' @import learnr ReliaGrowR WeibullR.ALT
#' @export
#' @seealso \url{https://paulgovan.github.io/ReliaLearnR/}
#' @return This function does not return a value.
#' @examples
#' if (interactive()) {
#'   rt()
#' }
rt <- function() {
  learnr::run_tutorial("rt", package = "ReliaLearnR")
}
