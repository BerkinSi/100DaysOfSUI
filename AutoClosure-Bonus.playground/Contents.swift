import UIKit

func printTest1(_ result: () -> Void) {
    print("Before")
    result()
    print("After")
}

printTest1({ print("Hello") })

func printTest2(_ result: @autoclosure () -> Void) {
    print("Before")
    result()
    print("After")
}
//Now we can omit the bcraces
printTest2(print("Hello"))


struct Person: CustomStringConvertible {
    let name: String
    
    var description: String {
        print("Asking for Person description.")
        return "Person name is \(name)"
    }
}
//Use this instead of #if DEBUG
let isDebuggingEnabled: Bool = false

//func debugLog(_ message: String) {
//    /// You could replace this in projects with #if DEBUG
//    if isDebuggingEnabled {
//        print("[DEBUG] \(message)")
//    }
//}

func debugLog(_ message: () -> String) {
     /// You could replace this in projects with #if DEBUG
     if isDebuggingEnabled {
         print("[DEBUG] \(message())")
     }
}

func debugLog(_ message: @autoclosure () -> String) {
    /// You could replace this in projects with #if DEBUG
    if isDebuggingEnabled {
        print("[DEBUG] \(message())")
    }
}

//let person = Person(name: "Bernie")
//debugLog({person.description})

let person = Person(name: "Bernie")
debugLog(person.description)
