#Sudarev (mainly researcher)
gen_data <- function(alpha1, alpha2, alpha3, alpha4) {
  x1 <- rnorm(444, 0, 1)
  x2 <- rnorm(444, 0, 1)
  x3 <- rnorm(444, 0, 1)
  data <- data.frame(x1=x1, x2=x2, x3=x3, y=alpha1*x1+alpha2*x2+alpha3*x3+alpha4)
  return(data)
}

estimate <- function (data) {
  ols <- lm(y ~ x1 + x2 + x3, data = data)
  coef <- ols$coefficients
  return(coef)
}

evaluate <- function (alpha1, alpha2, alpha3, alpha4) {
  alpha <- c(alpha4, alpha1, alpha2, alpha3)
  diff <- data.frame(x1=coef[[2]]-alpha1, x2=coef[[3]]-alpha2, x3=coef[[4]]-alpha3, x4=coef[[1]]-alpha4)
  return (diff)
}

iteration <- function(alpha1, alpha2, alpha3, alpha4) {
  data <- gen_data(alpha1, alpha2, alpha3, alpha4)
  est <- estimate(data)
  return(evaluate(alpha1, alpha2, alpha3, alpha4))
}

simulation <- function(n, alpha1, alpha2, alpha3, alpha4) {
  results <- pbsapply(1:n, function(x) {iteration(alpha1, alpha2, alpha3, alpha4)})
  rowMeans(results)
}
