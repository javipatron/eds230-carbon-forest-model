#' Forest growth condition
#' @param time - Time since start
#' @param C - Forest size measured in units of carbon
#' @param r - Exponential growth rate before before canopy closure
#' @param g - Linear growth rate after canopy closure (kg/year)
#' @param K - Carrying capacity in units of carbon of the forest
#' @param parms - as list with two values, r, g, K
#' @return derivative of forest size with time


equation_forestgrowth = function(time, C, parms) {

  if( C < parms$threshold) {
    growth = parms$r * C
  }
  
  else {
  growth = parms$g * (1 - C / parms$K)
  
  }
  
  return(list(growth))
  
}










