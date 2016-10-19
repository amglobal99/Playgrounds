//: [Previous](@previous)

import Foundation


//****************************  FUNCTIONS *********************************



/*
    Notes:
 
    1. You have to have  a bracket after func name
    2.
 
 */





func xyz  (e1:String,  e2:String ) -> Void   {
    print( "You gave me \(e1)  and  \(e2)  \n ")
}

xyz( e1:"Mary",e2: "JAne")


// same Function with optional parameter name
func xyz  (_ e1:String,  e2:String ) -> Void   {
    print( "You gave me \(e1)  and  \(e2)  \n ")
}

xyz( "Mary_2",e2: "JAne_2")




func transformString (_ str: String?) -> String {
    assert(str != nil, "Invalid parameter") // here
    return str! + "_transforme \n"
}

var x = transformString("This" )
print (x)


 /*

// Return Tuple from Function
func add (num1: Int, num2: Int, num3: Int) -> (Int, String)  {
   return (num1 + num2 + num3, "JAck" )
}

var tot = add(num1:10, num2: 20, num3: 30)





func dojack (this: String, andThat:String) ->String {
    return "Result is \(this) plus \(andThat)"
}

var myVar = dojack(this:"Hello", andThat: "Andy")
print(myVar)




func doThis (this: String, _ andThat:String) ->String {
    return "Result is \(this) plus \(andThat)"
}

var result = doThis(this:"Hello",  "Dude")
print(result)


// External parameter names
func doSomething (greeting this: String,  andThat:String) ->String {
    return "I am doing  \(this) plus \(andThat)"
}

var result2 = doSomething (greeting: "Hello",  andThat: "Dude")
print(result2)



// External parameter names
func doSpecial(this this:String,  andThat andThat:String) -> String {
    return "This is doSpacial   \(this) plus \(andThat)"
}

var result3 = doSpecial(this: "Hello",  andThat: "Dude")
print(result3)


// closure Trailing
func greet (name: String, comp: ()->Void )  {

    print ( "Hello there \(name)")
    comp()

}

greet(name:"Maj") { print("test") }



// Functon as parameter
func addTwoInts(a: Int, _ b: Int) -> Int {
    return a + b
}

func printMathResult(mathFunction: (Int,Int)->Int, a: Int,  b: Int) {
    print("Result: \(mathFunction(a, b))")
}


var mathFunction: (Int, Int) -> Int = addTwoInts

printMathResult(mathFunction: addTwoInts, a:5, b:9)




// closire as parameter



*/





func printInt(i:Int)->() {
    print("you passed \(i)")
}

// This assigns the function you just declared
// to a variable.  Note the absence of () after the
// function name.
let funVar = printInt

// Now you can call that function using your variable.
// Note the use of () after the variable name.
//funVar(2)  // will print out "you passed 2"


// You can also write a function that takes a function as an argument
func useFunction(_ funParam: (Int)->() ) {
    // call the passed-in function:
    print("Setting Int value")
    funParam(3)
    print("Int valeu set")
}

// You can call this new function passing in either
// the original function:
//print("calling useFuntion")
useFunction( printInt)
//print("compledted useFuntion")


// or the variable
//useFunction(funParam: funVar)



let myVar = printInt

myVar(4)










//: [Next](@next)
