//: [Previous](@previous)

import Foundation

var dict: [String:[String]] = [:]
var dict1:[String:Int]
var dict2:[String:String] = [:]

/*
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

*/




var dict3:[Int:String] = [:]
dict3 = [4:"mili", 7:"jaosn",3:"kim",11:"jenna",2:"karly",1:"ana"]

dict3.count
var eidx = dict3.endIndex
var sidx = dict3.startIndex

// Get array of keys .. method 1
var kys = Array(dict3.keys)


//get array of keys .... method 2
var keyArr = [Int](dict3.keys)
print(keyArr)












//: [Next](@next)
