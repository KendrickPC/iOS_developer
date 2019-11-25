import UIKit

// Counting Characters:
var str = "Meet me in St. Louis!"
"The string is \(str.count) characters long"

// Accessing specific characters
// We can also conveniently access the characters at the beginning and end of a string.
let firstLetter = str.first
let isExcited = str.last == "!"

// Checking for Substrings
// A substring is the term programmers use for any string that occurs within another string. We can check for the presence of a substring in different cases as shown below.
str.contains("Lou")
str.hasPrefix("Me")
str.hasSuffix("in")

// Creating Variations of Strings
// We can also use some string methods to generate different strings.
str.lowercased()
str.uppercased()
String(str.reversed())


