test_that("connect_to_EDP() Establist SQL Connection", {
  expect_equal( con<- connect_to_EDP("ham0hv9", "z95aM72bd2"), con)
})
