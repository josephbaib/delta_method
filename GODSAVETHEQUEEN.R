#BAIBURIN

generate_data <- function(y, x1, x2, x3) {
  return(rnorm(y, x1, x2, x3))
}

x1 <- rnorm(100, 0, 1)
x2 <- rnorm(200, 0, 2)
x3 <- rnorm(300, 0, 3)
y <- rnorm(400, 0, 4)

gen_data <- function(a) {
  x1 <- rnorm(444, 0, 1)
  x2 <- rnorm(444, 0, 1)
  x3 <- rnorm(444, 0, 1)
  y <- runif(1332, 0, 1)
  data <- data.frame(x1=x1, x2=x2, x3=x3, y=x1+x2+x3)
  return(data)
}

