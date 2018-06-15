
#' @title Play a Sound After Some Time
#'
#' @description This is a one-function package that will play a sound after a specified interval of time.
#' It wraps around the function \code{beepr::beep()}. After a specified number of
#' minutes or seconds it plays whatever sound is specified. Because it uses
#' \code{Sys.sleep()} and audio may not play immediately, timing may not be precise.
#' This is, however, sufficiently accurate for use on a cup of tea.
#' If \code{beepr::beep()} is not able to play the sound a warning is issued rather than
#' an error.
#'
#' @param time A positive number, the amount of time to wait
#' @param minutes If TRUE, time is in minutes. If FALSE, time is in seconds.
#' @param sound character string or number specifying what sound to be played by either specifying
#'      one of the built in sounds, specifying the path to a wav file or specifying an url. The default is 1,
#'      which plays a 'ping' sound from \code{beepr::beep()}..
#'      See the documentation for \code{\link[beepr:beep]{beep}}, as the input on this argument is passed
#'      directly to that function.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' teatimer(time = 0, minutes = TRUE, sound = 1)
#' }
#'
teatimer <- function(time = 1, minutes = TRUE, sound = 1){
  if(time<0) time = 0
  if(minutes) time = time*60
  beepr::beep(sound = sound, expr = Sys.sleep(time))
}
