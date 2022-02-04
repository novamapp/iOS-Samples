//: [Previous](@previous)

import Foundation

// classes don't have memberwise initializers

protocol Mobile {
    func action()
}

struct Animal {
    let name: String
}
// structs can only conform to protoctols
//struct Dog: Animal {
//    var isFurry: Bool
//}

// classes can inherit other classes and conform to protocols
// classes require an initializer
class Person {
    let name: String
    private var age: Int
    
    init(name: String, age: Int = 153) {
        self.name = name
        self.age = age
    }
    
    // classes are mutable; the mutating keyword is not needed to change a class variable
    func skipTime(by amount: Int) {
        age+=amount
    }
    
    // classes have deinitializers; structs do not have deinitializers
    deinit {
        age = 0
    }
}
// a class requires an initializer
// a subclass inherits its parent's initializer and properties
class Jogger: Person, Mobile {
    func action() {
        print("A jogger is jogging")
    }
}

final class CouchPotato: Person {
    init() {
        super.init(name: "CoachPotato")
    }
}

// can't subclass final classes
//class Sleepy: CouchPotato {}

let lisa = Jogger(name: "Lisa")
lisa.action()

// !!! copying a struct will make two copies of the object in memory
// !!! copying a class will create another reference to the same object in memory

//: [Next](@next)
