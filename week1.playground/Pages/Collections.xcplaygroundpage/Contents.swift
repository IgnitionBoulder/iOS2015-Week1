//: # Collections
//: [TOC](Table%20of%20Contents) | [Previous](@previous) | Next

//: ## Arrays
//: Arrays contain a number of objects. It's best programming practice to have all items in an array be of the same type.

var animals: [String]
animals = ["lion", "tiger"]

//: Arrays defined as **var**s can be modified.
animals.append("bear")
//: Arrays can be added together to create a new array containing all of the objects of both arrays
animals = animals + ["leopard"]
//: Arrays have a method to return the number of items in the array
animals.count

//: Items can be removed from arrays as well
animals.removeLast()
animals.count

//: Items in an array can be accessed using their index
print(animals[0])
if animals.count > 1 {
    print(animals[1])
}

//: Objects can be inserted or removed from any part of the array
animals.insert("elephant", atIndex: 0)
print(animals[0])

//: ## Array Enumeration
//: There are multiple ways to enumerate through the items of an array

for index in 0 ..< animals.count {
    print(animals[index])
}

for animal in animals {
    print(animal)
}

for (index, animal) in animals.enumerate() {
    print("\(index) - \(animal)")
}

//: ## Dictionaries
//: Dictionaries are collections of key:value pairs.

let person = ["name": "Spark Student", "class": "iOS Programming", "city": "Boulder"]

//: You can access just the keys or values
print(person.keys)
print(person.values)

//: Access the value for a key using square brackets
print(person["name"])

//: Because a key may not exist in a dictionary, the values would be considered optionals
print(person["city"])
if let city = person["city"] {
    print(city)
}

if let state = person["state"] {
    print(state)
} else {
    print("State not found!")
}

//: Since this dictionary was defined with **let**, it cannot be modified
//person["city"] = "Denver"

//: Dictionaries defined with **var** can be modified
var person2 = person
person2["city"] = "Denver"
person2["state"] = "Colorado"
print(person2)
person2.removeValueForKey("state")
print(person2)

//: Since it doesn't make sense to store a nil value for a key in a dictionary, assigning a value of nil removes the object from the dictionary
person2["state"] = "Colorado"
print(person2)
person2["state"] = nil
print(person2)

//: ## Dictionary Enumeration
//: Dictionaries can be enumarated similarly to Arrays

for key in person.keys {
    print("\(key) = \(person[key]!)")
}

for pair in person {
    print("\(pair.0) = \(pair.1)")
}

for (key, value) in person {
    print("\(key) = \(value)")
}

//: [TOC](Table%20of%20Contents) | [Previous](@previous) | Next
