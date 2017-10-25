library(PCRedux)

context("earlyreg")

test_that("earlyreg gives a slope and intercept of an amplification curve data from a quantitative PCR experiment", {

    library(chipPCR)
    res <- earlyreg(x=C316.amp[, 2], y=C316.amp[, 3], range=6)

    expect_that(res, is_a("numeric"))
    expect_that(round(res[1],2) == 108.52, is_true())
    expect_that(round(res[2],4) == -25.7989, is_true())
})