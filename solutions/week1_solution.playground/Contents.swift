//: Shopping List - Week 1

import Foundation

//: Create an empty array to store shopping list items
var monkeys: [String] = []
var rhinos = [String]()
var dogArray = Array<String>()
//: Add at least 5 items to the array using 3 different insertion methods

monkeys = ["apples"]
monkeys = monkeys + ["carrots"]
monkeys.append("BaNaNas")
monkeys.insert("Bread", atIndex: 3)
monkeys += ["milk"]
monkeys.appendContentsOf(["candy"])

rhinos = ["eggs", "butter"]
monkeys.insertContentsOf(rhinos, at: 0)

print(monkeys)

//: Sort your array of items

monkeys.sort()

print(monkeys)

//: Create a function to print an array, with it's index, with one item per line

func printArray(array: [String]) {
    var count: Int = 0
    for item in array {
        print("\(count) - \(item)")
        count = count + 1
    }
}

printArray(monkeys)

//: Combine the above. Create a function that takes an array, sorts it and prints it with it's index, with one item per line

func printSortedArray(array: [String]) {
    let newArray = array.sort()
    printArray(newArray)
}

printSortedArray(monkeys)

//: Create a function that returns a new array containing the first letter of each item, in uppercase. The returned array should be sorted and not have any repeated characters.
func firstLetters(array: [String]) -> [String] {
    let sorted = array.sort()
    var letters = [String]()
    for item in sorted {
        if let letter = item.characters.first {
            let uppercase = String(letter).uppercaseString
            if !letters.contains(uppercase) {
                letters.append(uppercase)
            }
        }
    }

    return letters
}

print(firstLetters(monkeys))
//: Create a function that searches the items array and returns all items that match the input string. Ignore uppercase/lowercase differences.
func search(array: [String], elephant: String) -> [String] {
    var itemsToReturn = [String]()

    for item in array {
        let lowercase = item.lowercaseString
        if lowercase.containsString(elephant.lowercaseString) {
            itemsToReturn.append(item)
        }
    }

    return itemsToReturn
}

print(search(monkeys, elephant: "a"))

print(dogArray.last?.characters.last)

