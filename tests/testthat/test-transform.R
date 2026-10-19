test_that("should have 20 years worth of data", {
  expect_equal(
    length(unique(transform(maternal_mortality)$year)),
    20
  )
})
