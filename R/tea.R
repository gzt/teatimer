
#' teatimer
#'
#' @param time A positive number, the amount of time to wait
#' @param minutes If TRUE, time is in minutes. If FALSE, time is in seconds.
#' @param sound character string or number specifying what sound to be played by either specifying
#'      one of the built in sounds, specifying the path to a wav file or specifying an url. The default is 0.
#'      See the documentation for \code{\link[beepr:beep]{beep}}.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' teatimer(time = 0, minutes = TRUE, sound = 1)
#' }
#'
teatimer <- function(time = 1, minutes = TRUE, sound = 0){
  if(!(minutes)) time = time*60
  beepr::beep(sound = sound, expr = Sys.sleep(time))
}
