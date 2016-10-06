//: [Previous](@previous)

import Foundation

var arrDict =  [ String:[String] ] ()   // define empty dictonary key is String, value is array of Strings

var dict1: [String:[String]]
var dict2: [[String]]


dict1 = ["Soups":["French","Tomato","Pea"], "xys":["a","b"]]
dict2 = [["Pickles","Jams"],["Mango","Amli","Tamarind"]]



// let's print the keys in dict1
for (key,_) in dict1 {
    print(key)
}

 // print both key and values
for (key, value) in dict1 {
    print("\(key) ++++ \(value)")
}


for (key, value) in dict1 {
    var va:String = String()
    for i in value {
        va += i
    }
    print("\(key) &&& \(va) ")
    
}




var dict3:[String:String]
dict3 = ["Jack":"one", "PAul":"two", "Kelly":"three"]

// let's print only the values
for (_, value) in dict3 {
    print(value)
}

for (key,value) in dict3 {
    print("\(key) ::: \(value)")
}





dict3.count
dict3.isEmpty
dict3.description
dict3.updateValue("four", forKey: "PAul")
print(dict3)
dict3.reversed()

print(dict3)













//: [Next](@next)
