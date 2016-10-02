//: [Previous](@previous)

import Foundation
import UIKit


// =============================================================

class Person {
    
    let name: String
    
    init(name:String) {
        self.name  = name
        print("PErson class is being initialized")
    }
    
   var apartment:Apartment?
    
    deinit {
        print("Person class is being DEINITIALIZED")
    }
    
    
}  // end class



class Apartment {
    
    let unit:String
    
    init(unit: String) {
        self.unit =  unit
        print("Apartment is being Initialized")
        
    }
    
    weak var tenant:Person?
    
    deinit{
        print("Apartment is being DEINIT")
    }
    
    
}



// ============== end classes ==================================




/*
var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "Johnny Appleseed")

reference2 = reference1
reference3 = reference1

reference2 = nil
reference1 = nil
reference3 = nil

*/


var john: Person?
var unit4A: Apartment?

john = Person(name: "Johny Appleseed")
unit4A = Apartment(unit: "4A")


john!.apartment = unit4A
unit4A?.tenant = john

john = nil
unit4A = nil









//: [Next](@next)
