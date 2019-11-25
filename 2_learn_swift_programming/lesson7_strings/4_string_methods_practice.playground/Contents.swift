import UIKit

/*
Practice: Spam Filter
As part of the spam filter for a message board app, there's a function called
checkLength(). The goal of this function is to prevent posts that are too
short (less than 10 characters) and prevent posts that are too long (more
than 10,000 characters). Finish implementing the function to return true if a
message is within the length restrictions and false if it is too long or too
short.
*/

import Foundation

func checkLength(message: String) -> Bool {
    if message.count < 10 || message.count > 10000 {
        return false
    }
    else {
        return true
    }
}

// Testing less than 10 characters
print(checkLength(message: "abcdf"))

/*
Practice: Case Insensitive Search
Finish implementing search(). If the second string (s2) occurs anywhere in
the first string (s1), return true. Otherwise, return false. The search
should be case insensitive. For example, search(s1: "Udacity", s2: "CITY")
returns true.
*/

import Foundation

func search(s1: String, s2: String) -> Bool {
    
    if s1.lowercased().contains(s2.lowercased()) {
        return true
    } else {
        return false
    }
}

print(search(s1: "Udacity", s2: "CITY"))
print(search(s1: "FOMO", s2: "OMO"))

/*
Practice: Is Palindrome?
Finish implementing isPalindrome() to return true if the input string is the
same forwards and backwards, and false if not. The search should be case
sensitive, for example, isPalindrome(input: "taCoCat") would return true
whereas isPalindrome(input: "TaCoCAt") would return false.
*/

import Foundation

func isPalindrome(input: String) -> Bool {
    if input == String(input.reversed()) {
        return true
    } else {
        return false
    }
}

print(isPalindrome(input: "racecar"))
print(isPalindrome(input: "taCoCat"))
print(isPalindrome(input: "TaCoCAt"))
