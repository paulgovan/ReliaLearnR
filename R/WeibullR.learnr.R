#' An Interactive Introduction to Life Data Analysis
#'
#' WeibullR.learnr is an interactive introduction to Life Data Analysis.
#' @import learnr
#' @import WeibullR
#' @export
#' @seealso \url{http://paulgovan.github.io/WeibullR.learnr/}
#' @examples
#' if (interactive()) {
#'   WeibullR.learnr()
#' }
WeibullR.learnr <- function() {
  learnr::run_tutorial('learnr', package = 'WeibullR.learnr')
}
