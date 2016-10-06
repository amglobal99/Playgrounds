//: [Previous](@previous)

import Foundation

enum myError : Error {
    case DivisionError(msg: String)
    case JackError
    case InvalidItem(str:String)
}

func divide(a: Int, b: Int) throws  -> Int {
   
    if b == 0 {
        throw myError.DivisionError(msg: "Sorry Buddy.... no luck")
    }
 
        print("Will attempt to divide")
        var res: Int = a/b
        print("Got the result")
        return res
}


func printArray( teams:[String]) throws -> Int {
    for i in 1...2 {
        print (teams[i])
    }
 
       // let result = try divide(50, b: 5)
    let result = try divide(a: 50, b: 0)
    
    print("returning result from printArray")
    
    return result
}


/// ********* Main Code **********************
        do {
            var myTeams: [String] = ["Falcons","Jaguars","Braves"]
            var cnt = try printArray(teams: myTeams)
            
            /*
           if cnt != nil {
                print ("value returned is "  + String(cnt)  )
            }else {
                print("value is nil")
            }
*/
            
        
        } catch myError.DivisionError(let msgs) {
            print("DEfault block ...\(msgs)")
        } catch  let error {
             print("Could no divide - Error is : \(error)")
        }
// *********************************************






do {
    let str = try NSString(contentsOfFile: "Foo.bar",   encoding: String.Encoding.utf8.rawValue)
    //let str = try? NSString(contentsOfFile: "Foo.bar",   encoding: String.Encoding.utf8.rawValue)    // optional value
    


// } catch let err as NSError {
} catch let err {
        print("default ..: " + err.localizedDescription)
    
} catch {
    
}




if let plays = try? String(contentsOfFile:"Foo.bar") {
    // value is nOT nil
    print("I got a proper value")
} else {
    // value is nil
    print("Darn .. this one is Nil")
}







//: [Next](@next)
