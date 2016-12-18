//: [Previous](@previous)

import Foundation


enum Team: String {
    
    init?(rawValue: String){
        switch rawValue{
            case "TEAM/FAL":
                self = .falcons
            case "TEAM/BEA":
                self = .bears
            case "TEAM/JET":
                self = .jets
            default:
                return nil
        }
    }
    
    case falcons
    case bears
    case jets
}




struct Person {
    var name: String
    var age: Int
    var team: Team
    
    init(name:String, age:Int, team:Team) {
        self.name = name
        self.age = age
        self.team = Team(rawValue: "TEAM/BEA")!
    }
    
}


let tm = Team(rawValue: "TEAM/JET")
print(tm!)


let per = Person(name: "PAUL", age: 7, team: Team(rawValue: "TEAM/BEA")!  )
dump(per)

let res = Team.bears

print(res)








