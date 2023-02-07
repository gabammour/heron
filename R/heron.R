#' @title heron
#' @description Compute triangle area with heron's formula
#' @param a Numeric length of side a
#' @param b Numeric length of side b
#' @param c Numeric length of side c
#' @return The triangle area
#' @export
#' @examples
#' heron(3, 4, 5)
#' heron(6, 8, 10)
#'
heron <- function(a, b, c) {
  if (!is.numeric(a) || !is.numeric(b) || !is.numeric(c)) {
    stop("Tous les arguments doivent être des nombres.")
  }
  if (a <= 0 || b <= 0 || c <= 0) {
    stop("Aucune des valeurs ne peut être négative ou nulle.")
  }
  p <- demi_perimetre(a, b, c)
  if (p <= 0) {
    stop("Le demi-périmètre doit être strictement positif.")
  }
  sqrt(p * (p - a) * (p - b) * (p - c))
}

