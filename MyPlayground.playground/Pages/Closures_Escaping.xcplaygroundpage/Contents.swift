//: [Previous](@previous)

import Foundation




// ******** Example of Escaping Closure ***************************

func someFunctionWithNonescapingClosure(closure: @noescape () -> Void) {
    closure()
}


var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}



class SomeClass {
    
    var x = 10
    
    func doSomething() {
        someFunctionWithNonescapingClosure { x = 200 }
        someFunctionWithEscapingClosure { self.x = 100 }
    }
}

let instance = SomeClass()
instance.doSomething()

print(instance.x)
// Prints "200"


completionHandlers.first?()
print(instance.x)
// Prints "100”









/*

// *********************** ASYNCHRONOUS Callas **********************************


//func pullData() -> Void {
    
        print("Started pull function")
    
        var postEndPoint = "http://jsonplaceholder.typicode.com/posts/1"
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        let url = URL(string: postEndPoint)
        var urlRequest = URLRequest(url: url!)
        //urlRequest.httpMethod = "GET"


            let task = session.dataTask(with: urlRequest, completionHandler:
                
                { (data, response, error) in
                    
                    print("Starting ...")
                    
                    
                        guard let responseData = data else {
                            print("Error: did not receive data")
                            return
                        }
                        guard error == nil else {
                            print("error calling GET on /posts/1")
                            print(error)
                            return
                        }
                    
                        // parse the result as JSON, since that's what the API provides
                        let post: NSDictionary
                            
                            do {
                                post = try JSONSerialization.jsonObject(with: responseData,
                                                                                  options: []) as! NSDictionary
                            } catch  {
                                print("error trying to convert data to JSON")
                                return
                            }
                        // now we have the post, let's just print it to prove we can access it
                        print("The post is: " + post.description)
                        
                        // the post object is a dictionary
                        // so we just access the title using the "title" key
                        // so check for a title and print it if we have one
                        if let postTitle = post["title"] as? String {
                            print("The title is: " + postTitle)
                        }
                } // end handler
            )  // end task
            
            
    task.resume()
    
    
//}  // end function



//pullData()


*/









//: [Next](@next)
