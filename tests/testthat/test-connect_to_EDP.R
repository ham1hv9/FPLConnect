test_that("connect_to_EDP() Establist SQL Connection", {
  expect_equal( con<- connect_to_EDP(user, password), con)
})
