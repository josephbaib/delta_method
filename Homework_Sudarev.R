library("pbapply")

source("GODSAVETHEQUEEN.R")
source("research.R")

iteration <- function(alpha1, alpha2, alpha3, alpha4) {
  data <- gen_data(alpha1, alpha2, alpha3, alpha4)
  est <- estimate(data)
  return(evaluate(alpha1, alpha2, alpha3, alpha4))
}

simulation <- function(n, alpha1, alpha2, alpha3, alpha4) {
  results <- pbsapply(1:n, function(x) {iteration(alpha1, alpha2, alpha3, alpha4)})
  rowMeans(results)
}
