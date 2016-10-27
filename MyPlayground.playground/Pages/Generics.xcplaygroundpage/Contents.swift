//: [Previous](@previous)


// *****************  GENERICS ********************************


import Foundation
import UIKit



func adderInt(x: Int, _ y: Int) -> Int {
    return x + y
}

let intSum = adderInt(x: 1, 2)


let numbers = [1,3,5]
let firstNumber = numbers[0]



var numbersAgain = Array<Int>()
numbersAgain.append(1)
numbersAgain.append(2)
numbersAgain.append(3)

let firstNumbersAgain = numbersAgain[0]


let countryCodes = ["Austria":"AT", "Spain" : "SP", "USA" : "US", "Turkey" : "TU", "England" : "Eng"]
let at = countryCodes["USA"]


let optionalName = Optional<String>.some("John")
if let name  = optionalName {
    
}


func pairsFromDictionary<KeyType, ValueType> (dictionary: [KeyType: ValueType] ) -> [(KeyType, ValueType)] {
    return Array(dictionary)
}

let pairs = pairsFromDictionary( dictionary: ["minimum": 199, "maximum": 299] )
let morePairs = pairsFromDictionary(dictionary: [1: "Swift", 2: "Generics", 3: "Rule'"])











func swapValues<T>( a: T,  b: T) -> (T) {
 //   let temporaryA = b
    let b = a
    //let a  = temporaryA
    return b
}


var jack = swapValues(a: "paul", b: "mason")
print ("Value of b is " + String( jack) )

var ajack = swapValues(a: 2, b: 5)
print("value of b is " + String(ajack))



protocol ReusableView { }

func register <T:UITableViewCell where T:ReusableView > ( param1: T.Type  ) -> Void {
    
}


let cell = UITableViewCell()






class Stack<T,E:Hashable> {
    
    var items = [T]()
    var dict = [E:T]()
    
    func push(element:T){
        items.append(element)
    }
    
    func pop( ) -> T {
       return items.popLast()!
        
    }
    
    
}








func genericTest<T:UIView>(name: T.Type) -> Void {
    print("thanks..")
    print(v.tintColor)
}


var v = UIView()

genericTest(name: type(of:v ) )


var x = type(of: v)
var y = type(of:"jack")
    
    



// **************************************************************************** 

// http://stackoverflow.com/questions/35089223/swift-generics-function-with-t-type-as-parameter-returns-optional-t



extension UINavigationController {
    func jpFindFirst<T: UIViewController>(_: T.Type) -> T? {
        for viewController in viewControllers {
            if let viewController = viewController as? T {
                return viewController
            }
        }
        return nil
    }
}



class FooViewController : UIViewController { }
class BarViewController : UIViewController { }

let fooViewController = FooViewController()
let barViewController = BarViewController()

let navController = UINavigationController(rootViewController: fooViewController)
navController.addChildViewController(barViewController)

print(navController.jpFindFirst(type(of: fooViewController)) ?? "None found.")

print(navController.jpFindFirst(type(of: barViewController)) ?? "None found.")



// ***************************************************************************************** 



/*

var v = UIView()

type(of: v)

var x = UIViewController()
type(of:x)

*/




//: [Next](@next)
