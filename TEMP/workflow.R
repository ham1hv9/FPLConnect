library(devtools)
library(roxygen2)

use_git()

# Create new file
use_r("connect_to_EDP")

load_all()
# Check if function in loaded in memory
exists("connect_to_EDP", where = globalenv(), inherits = FALSE)

check()

use_mit_license()

document()

# To Add Import Block and dependencies packages in the DOCUMENTION file
use_package("DBI")
use_package("odbc")

# Add second function to the FPLConnet package
# Create new file
use_r("connect_to_GULF_DW")

load_all()
# Check if function in loaded in memory
exists("connect_to_GULF_DW", where = globalenv(), inherits = FALSE)


#> Now that we know we have a minimum viable product,
#> let’s install the FPLConnect package into your library via:
install()

# After installation is complete, we can attach and use FPLConnect like any other package.
library("FPLConnect")


#> We can formalize this as a unit test. This means we express a concrete expectation
#> about the correct connect_to_GULF_DW() result for a specific input. First, we declare our
#> intent to write unit tests and to use the testthat package for this, via use_testthat():
use_testthat()

# This creates the file tests/testthat/test-connect_to_EDP.R.
use_test("connect_to_EDP")
use_test("connect_to_GULF_DW")

#> Run this test interactively, as you will when you write your own.
#> If test_that() or connect_to_EDP() can’t be found, that suggests that you probably need to call load_all().
# Going forward, your tests will mostly run en masse and at arm’s length via test():
test()


#> Now that your package is ready to be pushed to GitHub, the README.md file matters.
#> It is the package’s home page and welcome mat, at least until you decide to give it
#> a website (see Chapter 19), add a vignette (see Chapter 17), or submit it to CRAN (see Chapter 22).
use_readme_rmd()


# Push Package to Git Hub
use_github()


