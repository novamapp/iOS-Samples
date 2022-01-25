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
print(names)

/*
 Differences between Tuple and Array:
    - tuples are a fixed size
    - type of items in tuple are immutable; values of items can be changed
    - items can be accessed using indicies or names
 */
let colorCategory = (light: "Yellow", dark: "Purple", neutral: "White")
print("The light color is: \(colorCategory.light), the last color is: \(colorCategory.2)")

// can provide a default for dictionary variable
let ages = [
    "Vima" : 22,
    "Rivka" : 51,
    "Fawna" : 32
]
print("Minna's age = \(ages["Minna", default: -1])")

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
