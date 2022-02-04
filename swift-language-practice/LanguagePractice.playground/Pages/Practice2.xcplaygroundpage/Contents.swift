//: [Previous](@previous)

import Foundation

var closureVariable = { print("This is a closure") }
closureVariable // not triggered without ()
closureVariable()

// parameter labels not used in closures
var closureWithVariables = { (name: String) in
    print("Hello \(name)")
}
// trailing closure syntax can be used if a closure is the last parameter
func log(msg: String, and doThisAfter: () -> ()) {
    print()
    print(msg)
    doThisAfter()
    print()
}
log(msg: "This is a greeting") {
    // this will be done after print(msg)
    closureWithVariables("Richard")
}

// closure with parameters and return value used to calculate tip
func total(price: Double, tipRate: Double, with calculatedTip: (Double, Double) -> Double) -> Double {
    return price + calculatedTip(price, tipRate)
}
// with giving the closure variable names: p, t
var calculatedTotal = total(price: 10.0, tipRate: 15) { (p: Double, t: Double) -> Double in
    return p * t * 0.01
}
print("The calculated total is: \(calculatedTotal)")

// closure with parameters and return value used to get student average
func getGradeAverage(grades: [Int], using calculate: ([Int]) -> Double ) {
    // we don't yet know how the calculation will be done
    // but we do know that an array of grades is needed to return an average, a double
    print("The students average is: \(calculate(grades))")
}
// at the function call of getGradeAverage is when the calculate function will be defined
// without giving the closure variable names
getGradeAverage(grades: [100,90,90,90]) {
    var sum = 0
    for n in $0 {
        sum += n
    }
    return Double(sum) / Double($0.count)
}





//: [Next](@next)
