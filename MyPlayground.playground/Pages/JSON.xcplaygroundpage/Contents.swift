//: [Previous](@previous)

import Foundation
import UIKit


/*
func readJSONObject(object: [String: AnyObject])  {
    
    guard
        let title = object["dataTitle"] as? String,
        let version = object["swiftVersion"] as? Float,
        let users = object["users"] as? [[String: AnyObject]]
    else {
        return
    }
    
    
    for user in users {
        
        guard
            let name = user["name"] as? String,
            let age = user["age"] as? Int
        else {
            break
        }
        
        switch age {
        case 22:
            _ = name + " is \(age) years old."
        case 25:
            _ = name + " is \(age) years old."
        case 29:
            _ = name + " is \(age) years old."
        default:
            break
        }
    }  // end for loop
    
    
}  // end function

*/




/*
func convertJSONObject(object: [String: AnyObject])  {
    
    print("converting ....")
    
    
    var totalArray = [String:[String]]()
    var tempArray = [String]()
    
    guard
        let _ = object["dataTitle"] as? String,
        let _ = object["swiftVersion"] as? Float,
        let users = object["users"] as? [[String: AnyObject]]
   
        else {
            print("returning ")
            return
    }  // end guard
    
    
    
    for user in users {
        
        print("processing user ...")
        
        guard
            let name = user["name"] as? String,
            let section =  user["section"] as? String
        else {
                break
        }
        
                tempArray.append(section)
        
    
        
        
    
    }  // end for loop
    
    
    var mySections = Array(Set(tempArray))
    
    
    print (tempArray.count)
    
    
print(tempArray)
    
    
    
}  // end function

*/








            func getKeyArrayFromJSON(key: String, dictionary: [String: AnyObject]) -> [String]? {
                
                var tempArray = [String]()   // create empty array
                
                print("getKeyArrayFromJson: the key is : \(key)  ")
                
                                
                guard
                   // let users = dictionary[key] as? [[String: AnyObject]]
                    let users = dictionary["users"] as? [[String: AnyObject]]
                else {
                    print("returning a nil")
                    return nil
                }  // end guard
                
                for user in users {
                    guard
                        let key = user[key] as? String
                    else {
                        break
                    }
                    tempArray.append(key)
                }  // end for loop
                
                // return array
                return Array(Set(tempArray)  )
                
            }  // end function






            func getDictionaryFromJson(key1: String, key2:String, jsonObject: [String: AnyObject]) -> [String:[String]]?  {
    
                var finalDict = [String:[String]]()
                print("wil get array using key : \(key1)")
                var keyArray:[String] = getKeyArrayFromJSON(key: key1, dictionary: jsonObject)!
                print(keyArray)
            
                print ("key1: \(key1) \n key2: \(key2)")
            
                var tempArr = [String]()   // temporary storage
                
                for item in keyArray {  // Process each section
                         guard
                            let users = jsonObject["users"] as? [[String: AnyObject]]
                         else {
                            return nil
                        }
                   
                        // process all items and check for items that match item
                         for user in users {
                            var val1 = user[key1] as? String
                            var val2 = user[key2] as? String
                            if val1 == item {
                                tempArr.append(val2!)
                            }
                        } // for user in users

                            // Now add an entry to our final Dictonary
                            finalDict.updateValue(tempArr, forKey: item)
                        
                    }// for item in keyArray
 
                    // Return the final Dictionary
                    return finalDict
                
            }  // end funtion







//  ********************** MAIN LOOP ****************************************************************

        print("Starting .....")

            let url = Bundle.main.url(forResource: "data", withExtension: "json")

            do {
                let data = try Data(contentsOf: url!)
                let object = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                if let dictionary = object as? [String: AnyObject] {
                    
                    //readJSONObject(object: dictionary)
                    //convertJSONObject(object: dictionary)
                    //var myKeyArray:[String] = getKeyArrayFromJSON(key: "section", object: dictionary)!
                    //print(myKeyArray)
                    
                    
                    var dict:[String:[String]] =  getDictionaryFromJson(key1: "section", key2: "name", jsonObject: dictionary)!
                    
                    print(dict)
                    
                    
                }
            } catch {
                print("error")
            }





//  ************************************************************************************









//: [Next](@next)
