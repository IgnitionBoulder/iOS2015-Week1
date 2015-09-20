//: # Functions
//: [TOC](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)

//: ### No Parameter
//: Functions that return Void do not requre specifying a return type or any parameters

func hello() {
    print("Hello, Spark!")
}

hello()

//: ### Single Parameter
//: Function parameters require an explicit type, it cannot be inferred

func hello(name: String) {
    print("Hello, \(name)!")
}

hello("Spark Student")

//: ### Multiple Parameters
//: Each parameter requires a name and a type

func greet(greeting: String, name: String) {
    print("\(greeting), \(name)")
}

greet("Bonjour", name: "Spark Student")

//: ### Default Values
//: You can provide default values for parameters.

func greetDefault(greeting: String = "Hello", name: String = "Spark") {
    print("\(greeting), \(name)")
}

greetDefault()
greetDefault("Hello", name: "Spark Student")
greetDefault(name: "Mr. Toad")


//: ### Return Values
//: Return types are specified using the **->** syntax

func returnHello(name: String  = "Spark") -> String {
    return "Hello, \(name)"
}

returnHello()
returnHello("Bob")
print(returnHello())

//: ### Tuples
//: Multiple values can be returned from a function by surrounding them with parentheses
//: Unnamed tuple values are access using **.#** (e.g. **.0**) syntax

func unnamedTuple() -> (String, String) {
    return ("Hello", "Spark")
}

unnamedTuple()
print(unnamedTuple().1)

//: You can also name your tuple values, and access them using either the name or the **.#** syntax
func namedTuple() -> (greeting: String, name: String) {
    return ("Hello", "Spark")
}

namedTuple()
print(namedTuple().0)
print(namedTuple().name)

//: [TOC](Table%20of%20Contents) | [Previous](@previous) | [Next](@next)
