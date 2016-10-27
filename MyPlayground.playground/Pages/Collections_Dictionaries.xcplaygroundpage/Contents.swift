//: [Previous](@previous)

import Foundation

var arrDict = [String:[String]] ()   // define empty dictonary key is String, value is array of Strings

var dict1: [String:[String]]
dict1 = ["Soups":["French","Tomato","Pea"], "xys":["a","b"]]


// let's print the keys in dict1
for (key,_) in dict1 {
    print(key)
}

print("***************************")


 // print both key and values
for (key, value) in dict1 {
    print("\(key) ++++ \(value)")
}

print("***************************")



for (key, value) in dict1 {
    var va:String = String()
    for i in value {
        va += i + ","
    }
    print("\(key) --> \(va) ")
    
}

print("***************************")


var dict3:[String:String]
dict3 = ["Jack":"one", "PAul":"two", "Kelly":"three"]

// let's print only the values
for (_, value) in dict3 {
    print(value)
}

print("***************************")


for (key,value) in dict3 {
    print("\(key) ::: \(value)")
}

print("***************************")



dict3.count
dict3.isEmpty
dict3.description
dict3.updateValue("four", forKey: "PAul")

print(dict3)
dict3.reversed()
print("***************************")





var teams:[String:String] = [String:String]()

teams = ["Atlanta":"Falcons","Miami":"Dolphns","Seatle":"Seawaks"]







//: [Next](@next)
