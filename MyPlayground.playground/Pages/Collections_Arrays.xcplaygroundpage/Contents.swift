//: [Previous](@previous)

import Foundation

/*
var arr1: [String]
var arr2: [String]
var arr3: [[String]]

arr1 = ["Bussy","Ahmad","NAdine"]
print (arr1.count )
arr2 = ["Didi","Bindi","Megan"]
//arr3 = [arr1,arr2]

*/



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

print("my Test array: \(arr)  ")

arr.sort()   // Sort in place
print("Arry soted in place \(arr)   " )

var sortedArr = arr.sorted()  // sort and assign to new variable
print ("New Sorted Arry: \(sortedArr)  " )


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
//print(arr)

arr.append(8)
print(arr)





// Multiply all items by 2
/*
let sqmap = arr.map { (value:Int)-> Int in
    return value * 2
}
print(sqmap)
*/


let sqmap2 = arr.map{$0 * 2}
print("array multiplied by 2 :   \(sqmap2) ")


// Give me oly even numbers
print(arr)
let evenNumbers = arr.filter {  $0 % 2 == 0 }
print("even numbers : \(evenNumbers)  ")


// Give me Unique elements .. remove dupliactes
var nArr1 = [1,5,7]
let nArr2 = [9,2,4,5]
nArr1 += nArr2    // this has duplicate values
//var setX  = Set(nArr1)
//nArr1 = Array(setX)

nArr1 = Array(Set(nArr1))



// us23vfve reduce to get single elemen1t
var amt = nArr1.reduce(0,{$0 + $1} )
print(amt)


// Now find the unique elements for nArr1
var final = Array(Set(nArr1) )








//: [Next](@next)
