//: [Previous](@previous)

import Foundation


var arr1:[String] = ["jack","jamie","pauline","kristi", "jamie","kara"]
var arr2:[String] = ["pau","kim","simi","carla","jack","bob","simi"]
var arr3:[Int] = [4,9,6,2,19,14,3,44,1,22]
var arr4:[Int] = [44,33,77,11,16]





/// Array sort using closure

var arr10 = [14,8,22,7,9,11]
arr10.sort {$0 < $1 }

print(arr10)



/// Sort numeric Strings
var arr11 = ["23","7","11","5","190","44"]
var new = arr11.sorted()

/*
var new = arr11.sorted (by:){
  
  (str1, str2) -> Bool in
  return Int(str1)! < Int(str2)!
  
}
  */

print(new)



print("***************************************\n\n")




