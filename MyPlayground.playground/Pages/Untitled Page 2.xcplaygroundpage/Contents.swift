// Factorial
var x:Double = 5
var f:Double = 1
var i:Int

for i in 1...5  {
    f *= Double(i)
}
print("\(x)! = \(f)")

// Fibonacci
f=0
var a:Double = 0, b:Double = 1

for i in 1...50 {
    f = a + b
    a = b
    b = f
    print(f)
}

//
import Foundation
x = 12
var h:Double

h = x
b = 1

while abs(h-b)>0.01 {
    b = (h+b)/2
    h = x/b
    print(b)
}
print(Double.pi)
