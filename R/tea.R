
#' Play a Sound After Some Time
#'
#' teatimer is a timer that, by default, runs for however many minutes specified and then
#' plays a sound when the time is up. It can be set to run in seconds rather than minutes
#' and the sound can also be specified. This is not a precision timer.
#' If \code{beepr::beep} is not able to play the sound a warning is issued rather than
#' an error.
#'
#' @param time A positive number, the amount of time to wait
#' @param minutes If TRUE, time is in minutes. If FALSE, time is in seconds.
#' @param sound character string or number specifying what sound to be played by either specifying
#'      one of the built in sounds, specifying the path to a wav file or specifying an url. The default is 0.
#'      See the documentation for \code{\link[beepr::beep]{beep}}, as the input on this argument is passed
#'      directly to that function.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' teatimer(time = 0, minutes = TRUE, sound = 1)
#' }
#'
teatimer <- function(time = 1, minutes = TRUE, sound = 0){
  if(time<0) time = 0
  if(minutes) time = time*60
  beepr::beep(sound = sound, expr = Sys.sleep(time))
}
