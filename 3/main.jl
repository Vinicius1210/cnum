f1(x)= cos(x)-sqrt(x)
f2(x)= 5*sin(x^2)-MathConstants.e^(x/10)
i(x) = ir*(MathConstants.e^((x*q)/(k*t)) - 1)
g(x,V,R) = R*i(x) + x - V

f4(x) = g(x, 30, 1)
f5(x) = g(x, 3, 1)
f6(x) = g(x, 3, 10)
f7(x) = g(x, (300*10^-3), 1)
f8(x) = g(x, ((-300)*10^-3), 1)
f9(x) = g(x, -30, 1)
f10(x) = g(x, -30, 10)


ir = 10^-12
t = 300
k = 1.380649*(10^-23)
q = 1.60217663*(10^-19)



error = 10^-3


function bisection(a,b,f)
  x=(a+b)/2
  while abs(f(x)) > error
    if f(a)*f(x) > 0
      a = x
    else
      b = x
    end
    x = (a+b)/2
  end
  return x
end

r = bisection(0,1,f1)
println(r)

r = bisection(0,1,f2)
println(r)

r = bisection(0.8,0.9,f4)
println(r)

r = bisection(0.7,0.8,f5)
println(r)

r = bisection(0.6,0.7,f6)
println(r)

r = bisection(0.29,0.31,f7)
println(r)

r = bisection(-0.29,-0.31,f8)
println(r)

r = bisection(-29.9,-30.1,f9)
println(r)

r = bisection(-29.9,-30.1,f10)
println(r)
