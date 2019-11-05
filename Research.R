data <- data.frame(x1=x1, x2=x2, x3=x3, y=y)

estimate_ols <- function (data) {
  ols <- lm(y ~ x1 + x2 + x3, data = data)
  coef <- ols$coefficients
}

  

