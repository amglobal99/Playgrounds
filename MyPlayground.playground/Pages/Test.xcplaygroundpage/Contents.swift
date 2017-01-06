 //: [Previous](@previous)

//: Playground - noun: a place where people can play

import UIKit


func test(message:String,  times:Int, city:String )  {
    for i in 1...times {
        print("This is \(message) and int is \(i) ad city is \(city)"  )
    }
}

test(message: "Jacjo", times: 5 , city:"Sangli")



var cnt = 0
repeat {
    print ("vlue is \(cnt) " )
    cnt += 1
}while cnt < 5


 
 
 // Function to swap any two values using 1 line of code
 func swap2<T>(_ a: inout T, _ b: inout T  )  {
    (a,b) = (b,a)
 }
 
 var n1 = "Jack"
 var n2 = "paul"
 
 swap2(&n1,&n2)
 
 n1
 
 
 func flexStrings(s1:String = "", s2:String = "") -> String {
    return s1+s2 == "" ? "none" : s1+s2
 }
 
 flexStrings()
 flexStrings(s1:"One")
 flexStrings(s1:"One",s2:"two")
 
 
 
 
 // Generic function to compare two values
 
 func evenArr(a:[Int]) -> [Int] {
    var result: [Int] = []
    for elem in a {
        if elem > 10 {
            result.append(elem)
        }
    }
    return result
 }
 
 
 
 
 func mult(a:Int,b:Int) -> Int? {
    var result: Int?
    var total: Int = 0
    
    guard a != 0 && b != 0 else {
        return nil
    }
    
    for _ in 1...b {
        total += a
        print("total is \(total) " )
    }
    
    return total
    
 }
 
 
 var x = mult(a: 5, b: 4)
 
 print(x!)
 
 
 
 
 
 func enjoy( par: Any ...) -> String{
    return String(par.count)
 }
 
 
 
 
 
 
 
 func countFrom(from: Int, to: Int) {
    print(from) // output to the assistant editor
    if from < to {
        countFrom(from: from + 1, to: to)
    }
 }
 
 
 countFrom(from: 2, to: 6)
 
 
 
 
 
 
 
 
 
 // ========= NIl Coalescing +++++++++++++
 var opt:Int?
 var second:Int? = 42
 
 
 let n = opt ?? second
 
 print (n)
 
 
 
 var b = 10
 var y = 15
 
 
 let expr = b > y
 let ans = expr ? "yes": "no"
 
 
 
 func test() {
 
  
 guard let breed =  second else {
   print("ddd")
  return
 }
 
 
  print("++++++  \(breed)  ")
  
  
    
  
  
  
 }
 
//: [Next](@next)
