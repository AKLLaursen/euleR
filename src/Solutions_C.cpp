#include <Rcpp.h>
using namespace Rcpp;

//' Solution for problem 1
//' @param x An atomic vector
//' @export
// [[Rcpp::export]]
int sol1_C(IntegerVector x) {
  int n = x.size();
  int total = 0;

  for (int i = 0; i < n; ++i) {
    if (x[i] % 3 == 0 || x[i] % 5 == 0) {
      total += x[i];
    }
  }
  return total;
}

//' Solution for problem 1
//' @param x An atomic vector
//' @export
// [[Rcpp::export]]
int sol2_C(int input) {

  int x = 0;
  int total = 0;
  int fib_1 = 0;
  int fib_2 = 1;

  while (x <= input) {
    if (x % 2 == 0) {
      total += x;
    }
    x = fib_1 + fib_2;
    fib_2 = fib_1;
    fib_1 = x;
  }

  return total;
}
