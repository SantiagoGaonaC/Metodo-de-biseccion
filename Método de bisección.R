f = function(x) {2*x^3+8*x^2+4*x-8}
a = 0
b = 10
tol = 1e-3
max = 15
iter = 0
f.a = f(a)
f.b = f(b)

while(abs(b-a) > tol){
  iter = iter+1
  if (iter > max) {
    print(paste('Iteraciones maximas'))
    break
  }
  x_medio = (a+b)/2
  y_medio =  f(x_medio)
  if (f.a*y_medio > 0){
    a = x_medio
    f.a = y_medio
  } else {
    b = x_medio
    f.b = y_medio
  }
}
i_pm = (a + b) / 2 #interpolar  puntomedio
print(paste('Iteraciones: ',iter))
print(paste(i_pm))