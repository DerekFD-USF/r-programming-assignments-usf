test_that("cln_markt_data successfully assigns the stock_data S3 Class", {
dummy_data <- data.frame(
  DATE = c("01-01-2020", "01-02-2020"),
  CloSe = c(130.4, 135.30)
)
  result <- cln_mrkt_data(dummy_data)


  expect_s3_class(result, "stock_data")
  expect_s3_class(result, "tbl_df")
  })

test_that("cln_mrkt_data throws an error if input is not a data frame", {

  bad_input <- c(1,2,3,4,5)

  expect_error(cln_mrkt_data(bad_input))
})
