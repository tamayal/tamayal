diam <- function (diam) {
  2/2.54*(W/.92*4/3*pi)^1/3
}

WeightToDiameter1()

W <- c(.96, 1.51, 2.17, 3.85, 4.45, 6.02)

for(n in diam()) {
    print(n)
}

