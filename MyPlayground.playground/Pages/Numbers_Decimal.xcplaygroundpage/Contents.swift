//: [Previous](@previous)

import Foundation


var x:Int = 51575

var am = ( Double(x)/100 ).rounded()


print (am)




/// For accuracy use NSDecialNumber
let amt:Double = 0.0
var sum:NSDecimalNumber = NSDecimalNumber(value: amt)
for _ in 1...100  {
  sum = sum.adding(0.01)
}


print("Sum is : \(sum) ")






// Using Double, you see loss of precision
var sum1: Double = 0.0
for _ in 1...10 {
  sum1 += 0.10
}

print("Sum 1 is : \(sum1) " )




// using NSDecimalNumber
var sum2:NSDecimalNumber = NSDecimalNumber(value: 0.0)
for _ in 1...100 {
  sum2 = sum2.adding(0.01)
}

print("sum 2 is \(sum2) ")





// Another example
let numberText = "THIS IS A TEST"
let decimalNumber: NSDecimalNumber = NSDecimalNumber(string: numberText)


print(decimalNumber)

if decimalNumber == NSDecimalNumber.notANumber{
  print("yesss")
}




//: [Next](@next)
