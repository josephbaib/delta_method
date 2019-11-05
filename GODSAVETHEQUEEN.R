#BAIBURIN

generate_data <- function(y, x1, x2, x3) {
  return(rnorm(y, x1, x2, x3))
}

x1 <- rnorm(100, 0, 1)
x2 <- rnorm(200, 0, 2)
x3 <- rnorm(300, 0, 3)
y <- rnorm(400, 0, 4)

gen_data <- function(alpha1, alpha2, alpha3, alpha4) {
  x1 <- rnorm(444, 0, 1)
  x2 <- rnorm(444, 0, 1)
  x3 <- rnorm(444, 0, 1)

  data <- data.frame(x1=x1, x2=x2, x3=x3, y=alpha1*x1+alpha2*x2+alpha3*x3+alpha4)
  return(data)
}

