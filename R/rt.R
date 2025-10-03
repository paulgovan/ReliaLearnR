
#' Launch the Reliability Testing Tutorial
#'
#' This function launches the Reliability Testing tutorial
#' @importFrom learnr run_tutorial
#' @import WeibullR WeibullR.ALT ReliaGrowR
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
