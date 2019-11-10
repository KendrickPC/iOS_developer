//: # Strings
import UIKit
import Foundation
//: ## Introduction
// You've seen strings passed in to print statements


//print("Hello, world!")

// You've seen strings defined as variables and as constants
var myFavoriteAnimal = "nudibranch"
let encouragement = "You can do it!"

//: [Next](@next)
print(myFavoriteAnimal)
print(encouragement)


// Loop through all the characters in a string
var animal = "octopus"

//Swift 3 vs Swift 4 Deprecated .characters
//https://stackoverflow.com/questions/46467284/warning-characters-is-deprecated-please-use-string-or-substring-directly
for character in animal {
        print("\(character)")
}


let theTruth = "Money can't buy me love."
theTruth.count

var forwardString = "spoons"
var charactersReversed = forwardString.reversed()

for character in charactersReversed {
    print ("\(character)")
}


let similarTruth = ""
