//: [Previous](@previous)

import Foundation
//: ## Common string manipulations
// Convert 567 to $5.67
let numOfPennies = 567
let dollarInt = numOfPennies/100
let dollarsAndCentsString = "$\(dollarInt).\(numOfPennies % 100)" 


//: ### String concatenation
let monkeyString = "I saw a monkey."
let thiefString = "He stole my iPhone."
var sillyMonkeyString = monkeyString + " " + thiefString
//: ### String functions
sillyMonkeyString.contains("key")

let password = "Meet me in St. Louis"
let newPassword = password.replacingOccurrences(of: "e", with: "3")
//: [Next](@next)


