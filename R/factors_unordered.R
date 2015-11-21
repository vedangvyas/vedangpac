#' Factor with levels as they appear
#'
#' @param fact vector
#'
#' @return factor
#' @export
#'
#' @examples
#' factors_unordered(c("a","Hello", "b", "apple"))
factors_unordered <- function(fact){
  assertthat::assert_that(is.vector(fact))
  factor(fact, levels = unique(fact))
}
