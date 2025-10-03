
#' Reliability (1 - outage / total)
#'
#' Reliability is the probability that an item will perform its intended function
#' without failure over a specified period under stated conditions. This function
#' computes reliability given outage times and total times.
#'
#' @param outageTime Numeric scalar or numeric vector of forced outage times.
#' @param totalTime Numeric scalar or numeric vector of total times (same units as outageTime).
#' @return Numeric scalar: reliability for the period (between 0 and 1).
#' @examples
#' rel(100, 1000)
#' rel(c(10,20), c(500, 600))
#' @export
rel <- function(outageTime, totalTime) {
  if (anyNA(outageTime) || anyNA(totalTime)) stop("NA values not allowed in inputs")
  if (!is.numeric(outageTime)) stop("\"outageTime\" must be numeric")
  if (!is.numeric(totalTime))  stop("\"totalTime\" must be numeric")
  if (any(outageTime < 0) || any(totalTime < 0)) stop("times must be non-negative")

  total <- sum(totalTime)
  if (total == 0) stop("sum(totalTime) is zero (cannot divide by zero)")

  r <- 1 - (sum(outageTime) / total)
  # clamp to [0,1] in case of rounding/overdrawn outages
  r <- max(0, min(1, r))
  return(r)
}


#' Availability (1 - unavailability / total)
#'
#' Availability is the proportion of time a system is in a functioning condition.
#' This function computes availability given unavailable times and total times.
#'
#' @param unavailTime Numeric scalar or numeric vector of unavailable times.
#' @param totalTime Numeric scalar or numeric vector of total times (same units as unavailTime).
#' @return Numeric scalar: availability for the period (between 0 and 1).
#' @examples
#' avail(100, 1000)
#' avail(c(5,10), c(500,600))
#' @export
avail <- function(unavailTime, totalTime) {
  if (anyNA(unavailTime) || anyNA(totalTime)) stop("NA values not allowed in inputs")
  if (!is.numeric(unavailTime)) stop("\"unavailTime\" must be numeric")
  if (!is.numeric(totalTime))  stop("\"totalTime\" must be numeric")
  if (any(unavailTime < 0) || any(totalTime < 0)) stop("times must be non-negative")

  total <- sum(totalTime)
  if (total == 0) stop("sum(totalTime) is zero (cannot divide by zero)")

  a <- 1 - (sum(unavailTime) / total)
  a <- max(0, min(1, a))
  return(a)
}

#' Mean Time Between Failures (MTBF) for repairable items.
#'
#' MTBF = total operating time / number of failures. The MTBF is the expected time
#' between consecutive failures. It is commonly used for repairable items. The
#' behavior is the same as mttf here; keep separate name for semantic clarity.
#'
#' @param failures Numeric scalar or numeric vector of failure counts (non-negative).
#' @param totalTime Numeric scalar or numeric vector of total operating times.
#' @return Numeric scalar: MTBF. If number of failures is zero, returns Inf (with a warning).
#' @examples
#' mtbf(5, 1000)
#' mtbf(c(2,3), c(500,500))
#' @export
mtbf <- function(failures, totalTime) {
  if (anyNA(failures) || anyNA(totalTime)) stop("NA values not allowed in inputs")
  if (!is.numeric(failures)) stop("\"failures\" must be numeric")
  if (!is.numeric(totalTime)) stop("\"totalTime\" must be numeric")
  if (any(failures < 0) || any(totalTime < 0)) stop("failures and times must be non-negative")

  total_failures <- sum(failures)
  total_time     <- sum(totalTime)

  if (total_time == 0) stop("sum(totalTime) is zero (cannot compute MTBF)")
  if (total_failures == 0L) {
    warning("zero failures observed; MTBF is infinite")
    return(Inf)
  }

  return(total_time / total_failures)
}


#' Mean Time To Failure (MTTF)
#'
#' For non-repairable items MTTF = total operating time / number of failures. The
#' MTTF is the expected time to the first failure. It is commonly used for non-repairable items.
#' The behavior implemented is the same as mtbf here; keep separate name for semantic clarity.
#'
#' @param failures Numeric scalar or numeric vector of failure counts (non-negative).
#' @param totalTime Numeric scalar or numeric vector of total operating times.
#' @return Numeric scalar: MTTF. If number of failures is zero, returns Inf (with a warning).
#' @examples
#' mttf(5, 1000)
#' mttf(c(2,3), c(500,500))
#' @export
mttf <- function(failures, totalTime) {
  # same validation as mtbf
  if (anyNA(failures) || anyNA(totalTime)) stop("NA values not allowed in inputs")
  if (!is.numeric(failures)) stop("\"failures\" must be numeric")
  if (!is.numeric(totalTime)) stop("\"totalTime\" must be numeric")
  if (any(failures < 0) || any(totalTime < 0)) stop("failures and times must be non-negative")

  total_failures <- sum(failures)
  total_time     <- sum(totalTime)

  if (total_time == 0) stop("sum(totalTime) is zero (cannot compute MTTF)")
  if (total_failures == 0L) {
    warning("zero failures observed; MTTF is infinite")
    return(Inf)
  }
  return(total_time / total_failures)
}


#' Failure rate (lambda)
#'
#' Failure rate is the frequency with which an engineered system or component fails,
#' expressed in failures per unit of time. This function computes failure rate given
#' failure counts and total operating times.
#'
#' @param failures Numeric scalar or numeric vector of failure counts (non-negative).
#' @param totalTime Numeric scalar or numeric vector of total operating times.
#' @return Numeric scalar: failures per unit time (failures / totalTime).
#' @examples
#' fr(75, 5000)
#' fr(c(10,5), c(1000,2000))
#' @export
fr <- function(failures, totalTime) {
  if (anyNA(failures) || anyNA(totalTime)) stop("NA values not allowed in inputs")
  if (!is.numeric(failures)) stop("\"failures\" must be numeric")
  if (!is.numeric(totalTime)) stop("\"totalTime\" must be numeric")
  if (any(failures < 0) || any(totalTime < 0)) stop("failures and times must be non-negative")

  total_failures <- sum(failures)
  total_time     <- sum(totalTime)

  if (total_time == 0) stop("sum(totalTime) is zero (cannot compute failure rate)")

  return(total_failures / total_time)
}

