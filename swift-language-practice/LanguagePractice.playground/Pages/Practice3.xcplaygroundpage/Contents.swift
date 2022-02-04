
import Foundation

enum AgeError: Error {
    case tooOld
    case negativeAge
}

func calculateAge(birthYear: Int, currentYear: Int) throws -> Int {
    if (birthYear > currentYear) { throw AgeError.negativeAge }
    return currentYear - birthYear
}

// try? changes throwing functions into functions that return a nil
var myAge = try? calculateAge(birthYear: 2340, currentYear: 2335)
if myAge == nil {
    print("Invalid dates given")
}
var nonNilAge = try! calculateAge(birthYear: 2343, currentYear: 2389)
print("My age = \(nonNilAge)")

class Person {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

class Driver: Person {
    var age: Int
    
    // extending class can have an optional init even if the parent does not
    // a child must initialize all of its variables before calling super.init
    init?(age: Int, name: String) {
        if age < 16 {
            print("You're too young to drive")
            return nil
        }
        
        self.age = age
        super.init(name: name)
    }
}

class Pedestrian: Person {
    override init(name: String) {
        super.init(name: name)
        print("Hey! I'm walkin' over here!")
    }
}

let driverA = Driver(age: 5, name: "Leo")
if let driverB = Driver(age: 45, name: "Cross") {
    print("Congrats on becoming a driver \(driverB.name)")
}

// Swift typecasting allows optional: as?
let tina: Person = Driver(age: 33, name: "Tina")!
if let _ = tina as? Pedestrian {
    print("\(tina.name) is a pedestrian")
} else {
    print("You're a driver \(tina.name)")
}
