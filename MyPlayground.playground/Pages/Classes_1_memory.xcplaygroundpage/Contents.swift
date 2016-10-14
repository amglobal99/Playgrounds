
//: Playground - noun: a place where people can play

import UIKit



/*

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
        self.hobby = hobby
        self.age = age
        super.init(fname: boyfname, lname: boylname, gender: boygender)

    }
    
    override func test(astr str: String) {
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

print( " ***********************")
dump(myBoy)
print(" ********************** ")


 
 */
 
 
 /*
 

// **************** ClASS FUNCTION ***************************************
 // A class function is one where you do NOT have to create Instance of class to use function
 // It is samas static method in Java
 // **********************************************************************


class Cow {
    
    class func alert() {
        print("I printed this ")
    }

}

// No need to create instance here
Cow.alert()

 // **************************************************************************
*/






// ========== WHEN DOES AN OBJECT GET REMOVED FROM MEMORY ?? AND HOW TO MANUALLY REMOVE BY SETTING IT TO NIL ===============
class Book {
    var bkName:String = "Atlas"
    
    deinit {
        print("Book is being deinitialized ..")
    }
}


func doSomething() {
    var myBook = Book()
    print(myBook.bkName)
}



do {
    print(" **********************************")
    var test = try doSomething()
    print("************************************")
} catch  {
    print("an error occurred")
}


// ..... what we see here is that the Object is REMOVEd after the function it is in is completed




var myBook:Book? = Book()
print(myBook!.bkName)
myBook = nil    // Removed immediately




// ======================================= END =============================================================







// ======================  Example showing how a regular referenced Object ( Not Optional) is REMOVED =========
//
//          This is a very Important concept
//
//
class Teacher {
    var name:String = "Tammy"
    var bk: Book
    
    init(name:String,bk:Book){
        self.name = name
        self.bk = bk
    }
    
    deinit{
        print("Teaher is being deinitiliazed ..")
    }
    
}

        func tester() {
                var bk = Book()
                var th = Teacher(name: "Kelly", bk: bk)
            print("I am done executing this function...")
        }


    // CAll our test Function. After it completes, objects should get REMOVEd from memory
    var x = tester()



// ===================== END ===========================













//: [Next](@next)

