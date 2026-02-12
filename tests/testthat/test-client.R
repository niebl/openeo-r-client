test_that("connect with invalid url fails when setting via initialization", {
  x = openeo:::OpenEOClient$new(host = "example.foo")
  
  expect_error(x$connect())
})

test_that("connect with missing url fails when setting via initialization", {
  x = openeo:::OpenEOClient$new(host = NULL)
  expect_message(x$connect(),regexp = "Host-URL is missing")
})

test_that("connect with valid url", {
  testthat::skip_if_not(run_connection_tests, "Skipping connection tests in this environment.")

  x = openeo:::OpenEOClient$new(host = "http://127.0.0.1:8080")
  
  con = x$connect()
  expect(TRUE,failure_message = "connecting got an error")
})