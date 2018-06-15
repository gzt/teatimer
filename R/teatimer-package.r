#' @title Play a Sound After Some Time
#'
#'
#' @description This is a one-function package that will play a sound after a specified interval of time.
#' It wraps around the function \code{beepr::beep()}. After a specified number of
#' minutes or seconds it plays whatever sound is specified. Because it uses
#' \code{Sys.sleep()} and audio may not play immediately, timing may not be precise.
#' This is, however, sufficiently accurate for use on a cup of tea.
#' If \code{beepr::beep()} is not able to play the sound a warning is issued rather than
#' an error.
#'
#' @name teatimer-package
#' @docType package
NULL
