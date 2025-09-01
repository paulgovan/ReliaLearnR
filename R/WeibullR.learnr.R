#' An Interactive Introduction to Life Data Analysis
#'
#' WeibullR.learnr is an interactive introduction to life data analysis.
#' @import learnr WeibullR
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
