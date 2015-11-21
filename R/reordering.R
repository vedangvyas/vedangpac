#' Arrange data frame in descending order based on the factor
#'
#' @param df data frame
#' @param a_factor a factor
#'
#' @return data frame
#' @export
#'
#' @examples
#' reordering(tbl_df(gapminder), tbl_df(gapminder)$lifeExp)
reordering <- function(df, a_factor){
    dplyr::arrange(df, desc(a_factor))
}
