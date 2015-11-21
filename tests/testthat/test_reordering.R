context("Reordering data frame")

test_that("reordering() reorders in descending order", {
  library(gapminder)
  gtbl <- tbl_df(gapminder)
  cont <- gtbl$continent
  lifeexp <- gtbl$lifeExp
  actual_cont_descend <- arrange(gtbl, desc(continent))
  actual_life_descent <- arrange(gtbl, desc(lifeExp))
  expect_identical(reordering(gtbl, cont), actual_cont_descend)
  expect_identical(reordering(gtbl, lifeexp), actual_life_descent)
})
