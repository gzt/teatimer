#' Timer With an Alarm
#'
#' This is a one-function package that will play a sound after a specified interval of time.
#' It wraps around the function \code{beepr::beep()}. After a specified number of
#' minutes or seconds it plays whatever sound is specified. Because it uses
#' \code{Sys.sleep()} and audio may not play immediately, timing may not be precise.
#' This is, however, sufficiently accurate for use on a cup of tea.
#'
#' @name teatimer
#' @docType package
NULL
