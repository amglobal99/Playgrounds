//: [Previous](@previous)



import Foundation



func centsToDollars(amt: Int) -> Double {
  print("Amount:\(amt) ")
  return Double(amt) / 10000
}



var names = ["katie","jenny","leena", "meena", "john", "pam", "anna"]


var price = 6.25

var qty = 4.5


var a:Int = 625
var b:Int = 450

var total:Int = a * b


var final = centsToDollars(amt: total)


print(final)
