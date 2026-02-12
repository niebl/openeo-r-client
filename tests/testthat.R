library(testthat)
library(sys)
library(openeo)

# check whether or not to skip tests that require a backend connection
run_connection_tests = (Sys.getenv("CONNECTION_TESTS") == "true")

test_check("openeo")
