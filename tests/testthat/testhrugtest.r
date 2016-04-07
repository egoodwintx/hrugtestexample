## setup
writeLines("\nSetting up tests for hrugtestexample")
teststring = stringfunc()
testseq = seqfunc()


context("Context: Tests for hrugtestexample package")
test_that("stringfunc working", expect_match(teststring, "This is an R string"))

test_that("boolfunc working", {
  # skip("This test is non-functional")
  expect_identical(boolfunc(), TRUE)
  })

test_that("seqfunc working", {expect_equal(testseq, seq(from=2, to=100, by=2))})

#------------------------------------------------------------------#
context("Context: Unit Test Design Patterns")

test_that("Arrange, Act, Assert Pattern", {
  ## Arrange
  foo = 3
  bar = 3

  ## Act
  foobar = foo + bar

  ## Assert
  expect_equal(foobar, 6)
})

test_that("Given, When, Then Pattern", {
  ## Given
  isWorking = TRUE
  establishConnection = TRUE

  ## When
  if(establishConnection == isWorking) {
    connected = TRUE
  }
  expect_identical(connected, establishConnection)
})


## tear down
writeLines("\nTearing down tests for hrugtestexample")
rm(teststring)
rm(testseq)
