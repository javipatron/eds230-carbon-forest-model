#' Forest growth derivative after canopy closure
#' @param time time since start
#' @param C forest size measured in units of carbon
#' @param parms - as list with two values, g, K
#' @param g linear growth rate of the forest
#' @param K carrying capacity in units of carbon of the forest
#' @return derivative of forest size with time

dforestgrowth_closing = function(time, C, parms) {
  
  dC = parms$g * (1 - C / parms$K)
  
  return(list(dC))
}
