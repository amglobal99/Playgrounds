//: [Previous](@previous)

import Foundation

/*
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

*/







/*

enum Season {
    case Fall(String)
    case Winter(Int)
    case Summer(String)
}


var ssn = Season.Summer("Jack")

switch ssn {
    case .Winter:
        print("This is winter")
    case .Fall:
        print("This is fall")
    case .Summer(let name):
        print("hello ..." + name  )
}

*/








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





/*

 //   This is how enums are normally used throughout Apple APIs


enum Result{
    case success ([String])
    case failure (String)
}

var tempArray = ["Ball","bat","Net","Stumps"]
var photoResult: Result  = Result.success(tempArray)


switch photoResult {
        case Result.success(let var1):
            print("    Successfully found \(var1.count) recent photos. First is  \(var1[1])" )
        case  Result.failure(let error ) :
            print("    PhotosViewController.swift : Error fetching recent photos \(error)")
}



 //-----------------------------------------


*/






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








//: [Next](@next)
