//: [Previous](@previous)

import Foundation

/*
var arr1: [String]
var arr2: [String]
var arr3: [[String]]

arr1 = ["Bussy","Ahmad","NAdine"]
print (arr1.count )
arr2 = ["Didi","Bindi","Megan"]
arr3 = [arr1,arr2]

*/



var arrDict =  [ String:[String]  ] ()   // define empty dictonary key is String, value is array of Strings

var dict1: [String:[String]]
dict1 = ["Soups":["French","Tomato","Pea"], "xys":["a","b"]]


var dict2: [[String]]
dict2 = [["Pickles","Jams"],["Mango","Amli","Tamarind"]]





/*

// ************* Let's create an Array of structs *************

struct Person {
    var name: String
    var hobbies: [String]
    var gym: (class:String, qty:Int)
 
    init(name: String, hobbies:[String],gym:(class:String, qty:Int) ) {
        self.name = name
        self.hobbies = hobbies
        self.gym = gym
    }
    
}  // end struct



var people:[Person] = [Person]() // initialize empty array

var zara = Person(name:"Kelly",hobbies:["gym","knit","weave"],gym: ("pilates", 4) )
var buddy = Person(name:"Buddy",hobbies:["bball","soccer","music"],gym:("swim",8))
print ( zara.hobbies)
print(zara.gym.qty)


people.append(zara)
people.append(buddy)

print("The struct has elements : \(people.count) ")

print (people[1].name)
print (people[0].hobbies)
print(people[1].gym.class)

*/





// ********************** Sorting. Splitting etd .......


var arr:[Int] = [Int]()

arr.append(5)
arr.append(2)
arr.append(7)
arr.append(9)
arr.append(12)
arr.append(1)
arr.append(22)
arr.append(16)


print(arr)

arr.sort()   // Sort in place
print(arr)


var sortedArr = arr.sorted()  // sort and assign to new variable
print (sortedArr)

// check how many Items the array has
var howMany = arr.count

// print all items
for item in arr {
    print("Item: \(item)")
}


// Reverse the array
arr.reverse()

// remove third item
arr.remove(at: 2)

// now print new array
print(arr)

let sqmap = arr.map { (value:Int)-> Int in
    return value * 2
}



print(sqmap)



let fMap = arr.filter {  $0 % 2 == 0 }

print(fMap)







//: [Next](@next)
