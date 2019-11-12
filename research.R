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