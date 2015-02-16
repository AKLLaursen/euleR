#' Solution for problem 1
#'
#' @export
#'
problem_1 <- function(input = 1000L) {
  x <- 1L:(input - 1L)

  sol1_R <- function(x){
    sum(which(x %% 3 == 0 | x %% 5 == 0))
  }

  print(microbenchmark(sol1_R(x), sol1_C(x)))
  cat(paste0("\nR solution: ", sol1_R(x), "\nC++ solution: ", sol1_C(x), "\n\n"))
}

#' Solution for problem 2
#'
#' @export
#'
problem_2 <- function(input = 4000000L) {

  sol2_R <- function(input) {

    x <- 0L
    fib_1 <- 0L
    fib_2 <- 1L
    out <- integer()
    i <- 1

    while (x <= input) {
      x <- fib_1 + fib_2
      fib_2 <- fib_1
      fib_1 <- x
      out[i] <- x
      i <- i + 1
    }

    sum(out[which(out %% 2 == 0)])
  }

  print(microbenchmark(sol2_R(input), sol2_C(input)))
  cat(paste0("\nR solution: ", sol2_R(input), "\nC++ solution: ",
             sol2_C(input), "\n\n"))
}
