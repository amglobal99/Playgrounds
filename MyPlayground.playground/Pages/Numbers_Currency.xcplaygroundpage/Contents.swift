//: [Previous](@previous)

import Foundation


let total = 410 as NSNumber
let amt = 200


total.decimalValue





func formatCurrency(value: Double) -> String {
  let formatter = NumberFormatter()
  formatter.numberStyle = .currency
  formatter.maximumFractionDigits = 2;
  formatter.locale = Locale(identifier: Locale.current.identifier)
  let result = formatter.string(from: value as NSNumber);
  return result!
}




var price = 34.75

var x = formatCurrency(value: price)

print(x)


















//: [Next](@next)
