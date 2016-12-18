//: [Previous](@previous)

import Foundation


// +++++++++++++++++++ Main class ++++++++++++++++++++
class Person {
    
    var name: String
    
    init(name:String ) {
        self.name = name
    }
    
    func test( str:String) {
        print("Printing from Person. NAme is \(str) ")
    }
    
    func doThis(aStr: String) {
        print("From Person class: \(aStr)")
    }
    
} // end class



// ++++++++++++++++++++++ level 1 class +++++++++++++++++++++
class Boy: Person {

    override func test(str:String) {
       // super.test(str: "melanie")
        print("Printing from Boy. name is \(str) " )
    }
    
} // end class






// +++++++++++++++++++++++ level 2 class +++++++++++++++++++++++
class Child: Boy {
    
    
    
    override func test(str: String) {
        print("Printing from Child. name is : \(str) ")
    }
    
    
    override func doThis(aStr: String) {
        print("From Child class")
    }
    
    
}





var bb = Boy(name: "KIm")

//bb.test(str: "pim")
bb.doThis(aStr: "jack")

















