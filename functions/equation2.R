# Function for Equation 2: dC/dt = g * (1 - K/C)
equation_2 <- function(C, dt, g, K) {
  return(g * (1 - K/C) - dt)
}