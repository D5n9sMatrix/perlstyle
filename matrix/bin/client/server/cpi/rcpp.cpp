#include <Rcpp.h>
using namespace Rcpp;

// This is a simple example of exporting a C++ function to R. You can
// source this function into an R session using the Rcpp::sourceCpp 
// function (or via the Source button on the editor toolbar). Learn
// more about Rcpp at:
//
//   http://www.rcpp.org/
//   http://adv-r.had.co.nz/Rcpp.html
//   http://gallery.rcpp.org/
//

// [[Rcpp::export]]
Rcpp::Function as_tibble("as_tibble", 
                         Rcpp::Environment::namespace_env("tibble"));
as_tibble(x, Rcpp::Named(".rows", num_rows), 
          Rcpp::Named(".name_repair", name_repair));

auto as_tibble = Rcpp::package("tibble")["as_tibble"];
as_tibble(x, ".rows"_nm = num_rows, ".name_repair"_nm = name_repair);

// You can include R code blocks in C++ files processed with sourceCpp
// (useful for testing and development). The R code will be automatically 
// run after the compilation.
//

/*** R
timesTwo(42)
*/
