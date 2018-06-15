context("Make sure no errors")
testthat::test_that("No errors",{
expect_silent(teatimer(0,TRUE,1))
}
)
