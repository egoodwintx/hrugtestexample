##
## [hrugtestexample.r]
##
## author     : Ed Goodwin
## project    : hrugtestexample.r
## createdate : Sunday, April 3, 2016
## description:
##    simple set of functions to show unit testing
##
## version: 0.01
## changelog:
##

stringfunc = function() {
  str = "This is an R string"
  str
}

seqfunc = function() {
  seqnum = seq(from=2, to=100, by=2)
  seqnum
}

boolfunc = function() {
  return(TRUE)
}
