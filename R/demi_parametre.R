#' @title demi_perimetre
#' @description Compute the half parameter of a triangle
#' @param a Numeric length of side a
#' @param b Numeric length of side b
#' @param c Numeric length of side c
#' @return The semi parameter p of a triangle
#' @noRd
#'
demi_perimetre <- function(a, b, c) {
  (a + b + c) / 2
}
