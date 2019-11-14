import UIKit


/*
 String Interpolation:
 String interpolation is another powerful feature of string literals you'll
 be using as you learn Swift. It enables us to insert variables and
 expressions directly into string literals. (Remember a string literal is a
 sequence of characters placed between double quotation marks.)

 For example, let's say I wanted to write a birthday message for my teammate.
 I might declare a string variable like so:
 
 var birthdayCheer = "生日快樂“
 print(birthdayCheer)
 */

// Be aware of the Chinese Quotation mark VS the English quotation mark.
// error: unterminated string literal

var birthdayCheer = "生日快樂🎂"
print(birthdayCheer)

var name = "Kenderson"
var customizedBirthdayCheer = "\(birthdayCheer), \(name)!"

print(customizedBirthdayCheer)
