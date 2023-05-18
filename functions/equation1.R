#' Exponential population growth derivative
#' 
#' @param time time since start
#' @param C forest size measured in units of carbon
#' @param parms - as list with one value, r
#' @param r early exponential growth rate
#' @return derivative of forest size with time

equation1 = function(time, C, parms) {
  dC = parms$r * C
  return(list(dC))
}
