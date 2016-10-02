//: [Previous](@previous)

import Foundation
import UIKit
//import Playground



/*
var myClosure:(String)->() =
    {
            (str:String)->() in
            print("Value passed in is \(str) \n")
    }

myClosure("Ravi")




func doProcessing(input: String, completion:(String) -> Void )  {
    print(input)
    completion("I am Johnny !!" )
}



// call the function
doProcessing("This is Apple")
    {
    (result:String)->Void  in
        print("got back: \(result) \n" )
    }
*/


var secondClosure: ( (String)->Void)?

// ========  my tets function  ================

        func test( name: String,  completion: @escaping (String)->Void ) -> String {
            //print("Variable passed into function: \(name) \n " )
            NSLog("Starting test Function ...")
            //sleep(10)
            NSLog("Will start closure ..")
            secondClosure = completion
            completion("Zeena")
            return name + " Jack \n"
        }


var tempClosure = {
    (st:String)->Void in
    print("Closure code. Value is : \(st) \n "  )
}



/*
var temp = test(name: "Jenny" )
{
        (st:String)->Void in
            print("Closure code. Value is : \(st) \n "  )
}

*/

var temp = test(name: "Pauly", completion: tempClosure)
print ("Value returned by function  : " + temp )
secondClosure!("new")
tempClosure("Something different")









// =================  CLOSURES 2  ===========================================







//: [Next](@next)
