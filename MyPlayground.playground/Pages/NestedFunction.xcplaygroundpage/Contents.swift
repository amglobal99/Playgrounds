//: [Previous](@previous)

import Foundation

var str = "Hello, playground"




func makeIncrementer(forIncrement amount: Int) -> () -> Int  {
    var runningTotal = 0
    
    func incrementer()-> Int {
        runningTotal += amount
        return runningTotal
    }
    
    return incrementer
}



let incrementByTen = makeIncrementer(forIncrement: 10)

incrementByTen()
incrementByTen()
incrementByTen()


let incrementBySeven = makeIncrementer(forIncrement: 7)

incrementBySeven()
incrementBySeven()
incrementBySeven()




let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()




// ==============================================

func makeGrowthTracker(forGrowth growth: Int) -> () -> Int {
    var totalGrowth = 100
    
    func growthTracker() -> Int {
        totalGrowth += growth
        return totalGrowth
    }
    
    return growthTracker
    
}   // end func


var currentPopulation = 1000
let growBy500 = makeGrowthTracker(forGrowth: 500)

growBy500()
growBy500()
growBy500()



//: [Next](@next)
