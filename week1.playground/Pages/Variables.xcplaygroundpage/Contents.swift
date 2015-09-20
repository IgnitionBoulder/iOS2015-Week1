//: # Variables
//: [TOC](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)

//: ## Constants
//: Constants are variables whose values _cannot_ be changed. They are defined using the **let** keyword.

let person = "Spark Student"

//: The 'person' variable cannot be changed, so the following line would fail
//person = "Someone else"

//: ## Inferred Type
//: Swift will infer the type of a variable, whenever possible
//: The 'person2' variable type is inferred as a String

let person2 = "Spark Student"
print(person2.dynamicType)

//: The 'value' variable type is inferred as an 'Int'
let value = 2398
print(value.dynamicType)

//: ## Explicit Type
//: You can also explicity specify the type

let person3: String = "Spark Student"

//: By explicity specifying the type, you can set the value later
let person4: String
person4 = "Spark Student"

//: Variables which have been explicitly typed cannot be used before the variable is set to a value
let person5: String
//print(person5)

//: ## Variables
//: If you want to be able to modify the value of a variable, define it using the **var** keyword.

var vehicle = "car"
vehicle = "motorcycle"
vehicle += " side car"

//: ## Numeric Types
//: Variables in Swift are strongly typed, including numeric types. Arithmetic can only be performed on variables of the same type.

let integer: Int = 10
let double: Double = 20

//: Integers and doubles cannot be added together
// let total = integer + double

//: To perform the addition, we can convert the Int to a Double
let total = Double(integer) + double
print(total.dynamicType)

//: ## Optional Types
//: Variables must contain a value, unless their type specifies that they can be optional. This is done by appeding a **?** on the end of the type.

//: Because 'name' was not defined as an optional string, the value of 'nil' cannot be assigned to it
var name = "Chris"
// name = nil

var optionalName: String? = "Eric"
print(optionalName)
//: To use the value of an optional, it must be unwrapped. You can explicitly unwrap an optional by appending a **!** to the variable name
print(optionalName!)

optionalName = nil
print(optionalName)
//: Explictly unwrapping an optional that is nil is a programming error and will cause your app to crash
//print(optionalName!)

//: You can try to unwrap an Optional using **if let**
var testString: String? = "valid"

if let validString = testString {
    print("Got a valid string: '\(validString)'")
}

//: You can perform **else** code if the optional contains 'nil'
testString = nil
if let validString = testString {
    print("Got a valid string: '\(validString)'")
} else {
    print("test string was nil")
}

//: You can also perform normal **if** style checks using the **where** keyword
testString = ""
if let validString = testString where validString.isEmpty {
    print("Got an empty string")
}

//: ## Type aliases
//: Type aliases are a way to conveniently rename types

typealias Name = String

var testName: Name = "test name"
print(testName.dynamicType)

//: [TOC](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
