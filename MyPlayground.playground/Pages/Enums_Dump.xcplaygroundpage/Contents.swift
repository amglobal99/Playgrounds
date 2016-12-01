//: [Previous](@previous)

import Foundation



/*

enum SegHobby: String {
    case TheRedPillExperience
    case TheBluePillExperience
}


let  identifier = "TheRedPillExperience"
let segIdentifier = SegHobby(rawValue: identifier)


print(segIdentifier!.rawValue)

switch segIdentifier! {
case .TheRedPillExperience:
    print("😈")
case .TheBluePillExperience:
    print("👼")
}

*/





enum topics {
    case History([String])
    case Physics(String)
}

let hist = ["a","b","l"]
let var1 = topics.History(hist)
let var2 = topics.Physics("test")

print(var2)





enum Zone {
    case East
    case West
    case North
}


var v1 = Zone.West

/*
switch v1 {
case .East:
    print("eaete...")
case .West:
    print("west......")
default:
    print("defualu .....")
}


*/

// ******** Swift way of Pattern matching in if statements
if case Zone.West = v1 {     /// NOTE:  It is =  not ==
    print("yes .. match")
}


if v1 == .West {
    print("west")
}










//: [Next](@next)
