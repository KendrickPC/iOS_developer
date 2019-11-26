import UIKit

// Introduction to Dictionaries:
// Initializer Syntax
var groupsDict = [String:String]()
// Dictionary Literal
var animalGroupsDict = ["whales": "pod", "geese": "flock", "lions": "pride"]


// Another Example:
// Initializing Dictionary with Initializer Syntax
var averageLifeSpanDict = [String:Range<Int>]()
var lifeSpanDict = ["African Gray Parrot": 50...70, "Tiger Salamander": 12...15, "Bottlenose Dolphin": 20...30]


var phoneNumbers = ["Jenny": "867-5309", "Mateo": "510-7752", "Mike": "330-8004",
"Alicia": "489-4608", "Daniel": "455-2626", "Josie": "769-3339"]


// Dictionary Operations:
animalGroupsDict["crows"] = "murder"
animalGroupsDict["monkeys"] = "troop"

// The count method is available to all collections
animalGroupsDict.count
print(animalGroupsDict)

// Removing items from a dictionary.
animalGroupsDict["crows"] = nil
print(animalGroupsDict)

// Updating a value
animalGroupsDict["monkeys"] = "barrel"
print(animalGroupsDict)
animalGroupsDict.updateValue("gaggle", forKey: "geese")
print(animalGroupsDict)

// animalGroupsDict.type(of: ...)

animalGroupsDict.updateValue("crash", forKey: "rhinoceroses")
print(animalGroupsDict)


// Retrieving a value for a particular key:
let groupOfWhales = animalGroupsDict["whales"]

// We unwrap a value returned from a dictionary just like we would unwrap any other optional.
if let groupOfWhales = animalGroupsDict["whales"] {
    print("We saw a \(groupOfWhales) of whales from the boat.")
} else {
    print("No value found for that key.")
}

// What happens if the key isn't found?
if let groupOfSasquatches = animalGroupsDict["Sasquatches"] {
    print("We saw a \(groupOfSasquatches) of Sasquatches on our hike.")
} else {
    print("No value found for that key.")
}

