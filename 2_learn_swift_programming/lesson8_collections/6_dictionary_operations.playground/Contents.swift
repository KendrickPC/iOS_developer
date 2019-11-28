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


/*
Practice Number Frequency:
Finish implementing the function frequency(numbers: [Int]) -> [Int: Int] that returns a dictionary containing
the frequency of each number in the array. The dictionary's keys will be the Int values in the numbers array.
The dictionary's values will be the number of times that number occurs in the numbers array. For example:

If the numbers array were the following:
    
    let input = [1, 3, 1, 1, 2, 7, 3, 5, 8, 5, 4, 9]

Then the calling frequency(numbers: input) would return a dictionary like the following.

     [
         1: 3,
         2: 1,
         3: 2,
         4: 1,
         5: 2,
         7: 1,
         8: 1,
         9: 1
     ]

The numbers in the output are ordered for demonstrational purposes, but keep in mind that
dictionaries are an unordered data type. Your dictionary's values will just need to match
the number of occurrences of each number in the array.

*/

print("\nPractice Number Frequency:")

func frequency(numbers: [Int]) -> [Int: Int] {
    var frequencyInDict: [Int: Int] = [Int: Int]()
    
    for number in numbers {
        if let numberOfOccurences = frequencyInDict[number] {
            frequencyInDict[number] = numberOfOccurences + 1
        } else {
            frequencyInDict[number] = 1
        }
    }
    
    return frequencyInDict
}

let input = [1, 3, 1, 1, 2, 7, 3, 5, 8, 5, 4, 9]
print(frequency(numbers: input))

/*
Reflect
Initialize an empty dictionary which holds Strings as keys and Bools as values.
*/
var emptyDictionary = [String:Bool]()

/*
Reflect
Initialize a dictionary using dictionary literal syntax. The keys should be the
Strings: "Anchovies", "Coconut", "Cilantro", "Liver" and each value should be a
Bool representing whether you like the food or not.
*/

print("\nFood Dictionary Practice:")
var foodDict = [String:Bool]()
foodDict["Anchovies"] = false
foodDict["Coconut"] = false
foodDict["Cilantro"] = true
foodDict["Liver"] = false
print(foodDict)


/*
Reflect
Insert an entry for “George H.W. Bush” into the dictionary below.

    var presidentialPetsDict = ["Barack Obama":"Bo", "Bill Clinton":"Socks",
    "George Bush":"Miss Beazley", "Ronald Reagan":"Lucky"]

 This is the desired output:
    
    [George H. W. Bush: Millie, Barack Obama: Bo, Bill Clinton: Socks,
    George Bush: Miss Beazley, Ronald Reagan: Lucky]
 */

print("\nPresidential Pets Dictionary Practice:")
var presidentialPetsDict = ["Barack Obama": "Bo", "Bill Clinton": "Socks", "George Bush": "Miss Beazley", "Ronald Reagan": "Lucky"]

presidentialPetsDict["George H.W. Bush"] = "Millie"

print(presidentialPetsDict)

/*
Reflect
Remove the entry for "George Bush" from the presidentialPetsDict and replace it with an entry for
"George W. Bush". Use the same value for both keys.
*/
print("\nPresidential Pets Dictionary Remove Practice:")
presidentialPetsDict["George Bush"] = nil
presidentialPetsDict["George W. Bush"] = "Miss Beazley"
print(presidentialPetsDict)

// Another method for employing the same technique above:
// var oldValue = presidentialPetsDict.removeValueForKey("George Bush")
// presidentialPetsDict["George W. Bush"] = oldValue

/*
Reflect
We've initialized a new dictionary of presidentialDogs with the entries from presidentialPets.
Update the entry for “Bill Clinton” by replacing "Socks" the cat with "Buddy" the dog.
Print out the presidentialDogs dictionary to test your solution.
*/
print("\nPresidential Dogs Practice:")
var presidentialDogs = presidentialPetsDict
presidentialDogs["Bill Clinton"] = "Buddy"
print(presidentialDogs)

/*
Reflect
Use subscript syntax to fill in the print statement below...

    print("Michelle Obama walks \() every morning.")

...and produce the following string:
    
    Michelle Obama walks Bo every morning.

You'll need to retrieve a value from the presidentialDogs
dictionary and unwrap it using if let.
*/

print("\nPractice Subscript Syntax:")
var dogName = presidentialDogs["Barack Obama"]
print("Michelle Obama walks \(dogName) every morning.")

// Things to think about
// We unwrap the retrieved value using if let and then use string interpolation to
// insert “Bo” into the string. The string is printed out as a part of the if block.

// Another method to unwrap value.
// This unwrap method takes away the 'optional' value.
if let dog = presidentialDogs["Barack Obama"] {
    print("Michelle Obama walks \(dog) every morning.")
} else {
    print("No value found.")
}

/*
Reflect
How many studio albums did Led Zeppelin release?
*/

print("\nCounting Studio Albums:")
var studioAlbums = ["Led Zeppelin":1969, "Led Zeppelin II":1969, "Led Zeppelin III":1970,
"Led Zeppelin IV":1971, "House of the Holy":1973, "Physical Graffiti":1975,
"Presence":1976, "In Through the Out Door":1979, "Coda":1982]

// print(studioAlbums)
var ledZeppelinAlbumCount = studioAlbums.count
print("Led Zeppelin has released \(ledZeppelinAlbumCount) albums.")
