

context("Testing input")

test_that("bad time fails",
          {
          expect_error(teatimer('a',TRUE,1))
          })
