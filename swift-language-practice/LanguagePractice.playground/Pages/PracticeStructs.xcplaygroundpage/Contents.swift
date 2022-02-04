//: [Previous](@previous)

import Foundation

struct Person {
    // this is a stored property
    // struct properties do no have to be initialized
    let name: String
    
    // this is a computed property
    var nameGreeting: String {
        return "Hello \(name)"
    }
    
    let birthYear: Int
    var currentYear: Int {
        // this is a property observer
        willSet {
            print("\(name)'s age is going to change!")
        }
        // this is a property observer
        didSet {
            let diff = currentYear - birthYear
            age = diff >= 0 ? diff : 0
        }
    }
    private (set) var age = 0
    
    func sayHello() {
        print("Hello. My name is \(name) and I am \(age) years old.")
    }
    
    // structs are constant
    // any function that changes the structure must use the "mutating" keyword
    mutating func addToAge(_ years: Int) {
        self.age += years
    }
}

// structs have a default initializer: called memberwise initializer
// values initially set in constructor do not trigger property observers
// the struct has to be declared with "var" to be able to change the values within it
var Mady = Person(name: "Mady", birthYear: 2100, currentYear: 2200)
Mady.sayHello()
Mady.currentYear = 2500
Mady.sayHello()

// cannot call mutating func from a constant struct
//let Mika = Person(name: "Mika", birthYear: 2034, currentYear: 2890)
//Mika.addToAge(16)
//Mika.sayHello()


print()
struct Owner {
    let name: String
    
    init(name: String = "") {
        self.name = name
        print("My name is \(name) and I own a car.")
    }
}
struct Car {
    // lazy variables are only created when there first accessed
    // lazy variables must be initialized
    lazy var owner = Owner()
    let make: String
    let model: String
    
    func printMe() { print("make: \(make), model: \(model)") }
}
var bettysBaby = Car(make: "Nissan", model: "Altima")
bettysBaby.printMe()
bettysBaby.owner = Owner(name: "Betty") // owner's print() msg in it's init will only be called after the lazy variable is used


//: [Next](@next)
