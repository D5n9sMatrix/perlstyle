library(Rcpp)

grid <- expand.grid(len = 10 ^ (0:7), pkg = "cpp", stringsAsFactors = FALSE)
grid <- rbind(
  grid,
  expand.grid(len = 10 ^ (0:4), pkg = "rcpp", stringsAsFactors = FALSE)
)
b_grow <- bench::bench_time(expr = 0)

saveRDS(b_grow, "growth.Rds", version = 2)
