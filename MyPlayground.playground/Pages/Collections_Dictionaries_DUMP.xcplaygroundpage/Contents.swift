//: [Previous](@previous)

import Foundation

var dict: [String:[String]] = [:]
var dict1:[String:Int]
var dict2:[String:String] = [:]


//dict = ["8":["f","j","o"],"22":["e","d","s"],"11":["w","d","g"],"4":["a","s","m"]]

dict = ["8":["f","j"],"22":["e","d"],"11":["w","d"],"4":["a","u"]]
dict1 = ["Jack": 10,"PAul":5,"Karla":2]
dict2 = ["1":"jack","2":"paul","3":"kim"]


var fil1 = dict.filter{ $0.value.contains("d") }
print(fil1)

print(fil1[0])
print(fil1[0].key)
print(fil1[0].value)

var fil2 = dict.filter { Int($0.key)! > 8 }.map{$0.key }
print(fil2)





















//: [Next](@next)
