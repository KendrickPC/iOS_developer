import UIKit
import Foundation

/*
Practice: Remove First N Elements
Finish implementing the function remove(input: String, first: Int, last:
Int), where first is the number of characters to be removed from the
beginning of the string, and last is the number of characters to be removed
from the end of the string. Return a new string with all the characters
removed.

Hint 1: It's possible that the function will be called with 0 for first,
last, or both.

Hint 2: if the sum of first and last are greater than the number of
characters in string, then we'd remove more characters than are present in
the string and the program will crash. If this is the case, return an empty
string.
*/

func remove(input: String, first: Int, last: Int) -> String {
    // we require a variable to manipulate strings
    var newString = input
    // modify newString and return the result
    if newString.count > (first + last) {
        print("New String is valid.")
        newString.removeFirst(first)
        newString.removeLast(last)
    } else {
        return ""
    }
    return newString
}

print(remove(input: "Kenneth, when are you going to South Korea?", first: 3, last: 5))

print(remove(input: "Kenneth, when are you going to South Korea?", first: 20, last: 35))
