#' An Interactive Introduction to Life Data Analysis
#'
#' WeibullR.learnr is an interactive introduction to Life Data Analysis.
#' @import learnr
#' @import WeibullR
#' @export
#' @seealso \url{https://paulgovan.github.io/WeibullR.learnr/}
#' @return This function does not return a value.
#' @examples
#' if (interactive()) {
#'   WeibullR.learnr()
#' }
WeibullR.learnr <- function() {
  learnr::run_tutorial('WeibullRlearnr', package = 'WeibullR.learnr')
}
