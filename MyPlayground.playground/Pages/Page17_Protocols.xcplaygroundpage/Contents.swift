//: [Previous](@previous)

import Foundation
import UIKit


// *****************  First you define a protocol and an extension ******************

protocol Animal {
    func eat() -> Void
    func hunt() -> Void
    //func makeNoise() -> Void
    
}


extension Animal {
    
    func eat()-> Void  {
        print("I am eating")
    }

    func hunt()->Void {
        print("I am hunting")
    }
    
    
    func makeNoise()-> Void  {
        print("I am making noise \n")
    }

}  // end extension




 // You can extend any class to conform to any protocol
// Here I am asking string to conform to Animal
 /// Therefore String now will have acces to all methods from Animal

extension String: Animal {
}


class Cat: Animal {
    
    var city: String?
    
}  // end class



var myAnimal = Cat()


myAnimal.city = "sangli"
var x: String!  = myAnimal.city
x?.makeNoise()


print ( "******************************")
myAnimal.eat()
myAnimal.hunt()
myAnimal.makeNoise()



func isReferenceType(toTest: Any) -> Bool {
    return toTest.dynamicType is AnyObject
}


isReferenceType(Animal)    // this shows that a protocl is not Reference Type
isReferenceType(myAnimal)






//: [Next](@next)
