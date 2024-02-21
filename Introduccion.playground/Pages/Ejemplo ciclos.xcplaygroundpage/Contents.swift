//: [Previous](@previous)

import Foundation

var n = 7
var f:Double = 1 // 1*2*3*...*n

for i in 1...n {
    f = f * Double(i)
}
print("\(n)! = \(f)")

//: [Next](@next)
