import Foundation

/*
 Difference between Set and Array:
    - order does not matter for Set
    - can't repeat items in a Set
 */
// array to set
// can't read values of set using numerical position
let names = Set(["Mark","Jean","Oslo", "Jean"])
let emptySet = Set<String>()
//print(names)

/*
 Differences between Tuple and Array:
    - tuples are a fixed size
    - type of items in tuple are immutable; values of items can be changed
    - items can be accessed using indicies or names
 */
let colorCategory = (light: "Yellow", dark: "Purple", neutral: "White")
//print("The light color is: \(colorCategory.light), the last color is: \(colorCategory.2)")

// can provide a default for dictionary variable
let ages = [
    "Vima" : 22,
    "Rivka" : 51,
    "Fawna" : 32
]
//print("Minna's age = \(ages["Minna", default: -1])")

// enums can have associated values; they don't have to be the same type
enum RandomEnum {
    case color(name: String)
    case number(value: Int)
    case randX
    case date(day: String)
}
// can assign rawValue type to enum; same type for all enum cases
enum WeekDay: String {
    case MONDAY
    case TUESDAY
    case WEDNESDAY
    case THURSDAY
    case FRIDAY
}

// range operators: ..< and ...
//      ..< : half-open range operator
//      ... : closed range operator
var testNum = -1
if (..<5).contains(testNum) {
    print("Contains \(testNum)")
}
testNum = 5
if !(..<5).contains(testNum) {
    print("Does not contain \(testNum)")
}
if(...5).contains(testNum) {
    print("Contains \(testNum)")
}


// repeat loop: basically do-while loop
repeat {
    print("testnum = \(testNum)")
} while(testNum < 5);

// breaking a loop
for n in (3...15) {
    if n.isMultiple(of: 2) { break }
//    print("n = \(n)")
}

// exiting nested loops
// break statement by itself will only break the inner loop
outerLoop: for i in (1...5) {
    for j in (3...9) {
//        print("i = \(i), j = \(j), i*j = \(i*j)")
        if (i*j) == 6 {
            break outerLoop
        }
    }
}

// variadic function: functions that take a variable number of parameters of the same type
func consolePrint(nums: Int...) {
    var str = ""
    for n in nums {
        str+="\(n) "
    }
    print("Nums: \(str)")
}
// consolePrint(nums: 1,234,54,15)
// consolePrint(nums: 242,3434,45)

// throwing functions
// define an enum that describes error being thrown
enum NumberCheckerError: Error {
    case notEvenNum
}
func logEven(num: Int) throws {
    if num.isMultiple(of: 2) {
        print("Even num: \(num)")
    } else {
        throw NumberCheckerError.notEvenNum
    }
}

do {
    try logEven(num: -3)
} catch (let error) {
    print("Failed: \(error)")
}
try logEven(num: -2)


// inout parameter:
//      - parameter in which changes will not be local
var changeAble = 5
var changeAbleString = "changeAble before func = \(changeAble)"
func changeNume(_ x: inout Int) {
    x += changeAble
}
// !!! can produce: [ Fatal access conflict detected. ] crash
//changeNume(&changeAble)
//changeAbleString += " |  changeAble after func = \(changeAble)"
//print(changeAbleString)
