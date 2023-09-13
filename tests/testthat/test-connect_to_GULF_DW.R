test_that("connect_to_GULF_DW() Establist SQL Connection", {
  expect_equal( con1<- connect_to_GULF_DW(user, passwd), con1)
})
