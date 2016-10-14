message: //: [Previous](@previous)

//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var city:String = "Pune"


func printHelloWorld() {
    print("Hello worldsr")
    
}



printHelloWorld()


func test(message:String,  times:Int, city:String )  {
    for i in 0..<times {
        print("This is \(message) and int is \(i) ad city is \(city)"  )
    }
    
    
}

test("Jacj String", times: 5 , city:"Sangli")


for index in 1..<5 {
    print (index )
}


var cnt = 0
repeat {
    print ("vlue is \(cnt) " )
    cnt += 1
}while cnt < 5




var str4:String?

str4 = "test"





var a = 10
var b: Int = 4

b += ++a

print ("a is \(a) and b is \(b) ")










//: [Next](@next)
