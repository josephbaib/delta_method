#BAIBURIN

gen_data <- function(alpha1, alpha2, alpha3, alpha4) {
  x1 <- rnorm(444, 0, 1)
  x2 <- rnorm(444, 0, 1)
  x3 <- rnorm(444, 0, 1)

  data <- data.frame(x1=x1, x2=x2, x3=x3, y=alpha1*x1+alpha2*x2+alpha3*x3+alpha4)
  return(data)
}

