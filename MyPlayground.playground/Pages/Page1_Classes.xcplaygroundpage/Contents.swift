
//: Playground - noun: a place where people can play

import UIKit

class Person  {
    
        var fname:String {
            didSet{
                print("(didSet): current value  \(fname) \n")
            }
            
            willSet {
                print("(willSet): current value  \(fname)  \n")
            }
        }
    
        var lname:String
        var gender:String?
    
    
    init(fname:String, lname:String, gender:String) {
        self.fname = fname
        self.lname = lname
        self.gender = gender
    }
    
    
    func test(astr: String){
        print("Prnting test method from Person class . str value is \(astr)")
    }

    
} // end class

 // ========================================================================


class Boy: Person {
    var hobby:String?
    var age: Int?
    var boyfname = "SAmeer"
    var boylname = "Shah"
    var boygender = "Fem"
    
    init(hobby:String, age:Int) {
        super.init(fname: boyfname, lname: boylname, gender: boygender)
        self.hobby = hobby
        self.age = age
    }
    
    override func test(str: String) {
        print("Printing from test method of Boy class. you sent : \(str) \n" )
    }
    
} // end Boy class

// ===========================================================================



var jack:Person = Person(fname: "Jacob",lname: "Smith",gender: "Female")

jack.fname = "Don"
jack.lname = "Trump"

print ( "Fullname is \(jack.fname) \( jack.lname) \n ")
jack.lname = "Patel"
jack.fname = "Shahrukh"
print("Firtsname is now \(jack.fname) \n")


 // *********************************************************** 


var myBoy:Person  = Boy(hobby: "Sports", age: 2)

myBoy.test(astr: "Jacko")

print ("name is \(myBoy.lname) " )




// *******************************************************


class Cow {
    
    class func alert() {
        print("I printed this ")
    }
    
    
}


Cow.alert()




//: [Next](@next)

