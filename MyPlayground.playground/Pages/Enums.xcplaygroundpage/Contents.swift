//: [Previous](@previous)

import Foundation


enum Device {
    case iphone
    case ipad
    case ipod
    
    var year: Int {
        switch self{
        case .ipod:
            return 2007
        case .iphone:
            return 2009
        default:
            return 2000
        }
    
    }
    
}   // end enum



var test = Device.ipad

print (String(test.year) )











enum Season {
    case Fall(String)
    case Winter(Int)
    case Summer(String)
}

// This is how you first create an Enum
var ssn = Season.Summer("Jack")

// This is hw you retrieve values from an existing enum
switch ssn {
    case .Winter:
        print("This is winter")
    case .Fall:
        print("This is fall")
    case .Summer(let name):
        print("hello ..." + name  )
}










/*



// ==========================================

enum Hobby{
    case Sports(String, Int)
    case Knitting(Int)
    case Gardening (String)
}


var myHobby = Hobby.Knitting(24)
var hobby2 = Hobby.Sports("Greet", 15)


switch hobby2 {
    
case .Sports(let var1, let var2) where var2  > 10 :
    print("sports \(var1) and \(var2)")
case .Knitting(let num):
    print("Knitting \(num)")
case .Gardening:
    print("gardening")
default:
    print("default")
    
}

// =======================================

*/







 //  ************ This is how enums are normally used throughout Apple APIs **************


enum Result{
    case success ([String])
    case failure (String)
}

// First you process your data and then put in in an array or String or Dictionary
var tempArray = ["Ball","bat","Net","Stumps"]

// Then you create an Enum copy to hold this value. We'll call this copy 'photoResult'
var photoResult: Result  = Result.success(tempArray)

// Later, we may want to process the enum. We use that Enum copy using name 'photoResult'
switch photoResult {
        case Result.success(let var1):
            print("    Successfully found \(var1.count) recent photos. First is  \(var1[1])" )
        case  Result.failure(let error ) :
            print("    PhotosViewController.swift : Error fetching recent photos \(error)")
}







/*


struct Person{
    
    var firstName: String
    var lastName: String
    var city: String
    
    init(_ f:String, _ l:String, _ c:String) {
        self.firstName = f
        self.lastName = l
        self.city = c
    }
    
} // end struct



enum Result{
    case success([Person])
    case failure(String)
}


var contacts:[Person] = []

let contact1 = Person("Jessica","Smith","Miami")
contacts.append(contact1)
let contact2  = Person("Megan","Malone","Satara")
contacts.append(contact2)
let contact3 = Person("Bobby","Jones","Destin")
contacts.append(contact3)

var result = Result.success(contacts)

switch result {
    
    
case let Result.success(var1):
    print("We did get success \n. Printing results")
    for name in var1 {
        print("Firstname: \(name.firstName) Lastname: \(name.lastName)  City: \(name.city)")
    }
case let Result.failure(err):
    print("Bummer.. failure")
    
}




*/




///========================= Generic Enums ===================================

enum Result<Value> {
    case success(Value)
    case failure(Error)
}


var resArr = ["Pim","min","jon","carla"]
var gotIt = Result.success(resArr)

switch gotIt {
case .success:
    print("succes")
case .failure:
    print("fail")
}








// ************************* HOW TO SET AND RETRIEVE VALUES from Enum *************************


enum Test:String {
    case one
    case two
}

enum Movie{
    case Cast([String])
    case Budget(Int)
}



// *********** 2 ways to set a value *****************


// OPTION I
var var1 = Test.one   // enu Test has value of one
var mov1 = Movie.Cast(["amitabh","rakhi","menna"])
print(var1)
print(mov1)


// OPTION II
var var2 = Test(rawValue: "two") // NOTE: Test enum is of type String
print(var2!)


// ***************** retriev values ********************

// You have to use a variable which stores a particular Enum
// NOTE: To retrieve an enum, you shoudl first have a variable that has stored that enum

switch mov1 {
case .Cast(let temp):
    print("it is shola  \(temp)")
case .Budget:
    print("it is budget")
}








//: [Next](@next)
