import UIKit

var str = "Hello, playground"

/*
Things to think about
Operators are special symbols or phrases that can be used to check, change, or combine values.

Expressions are statements that evaluate to a single value. In programming lingo, you’d say expressions are statements that return or “can be reduced to” a single value.

 */


/*
 For the following questions, use the following variables and their
 initial values:

         var x = 20
         var y = 4
         var z = 13
 
 */

// Operator Precedence 1
// What is the value of the following variable?

var x = 20
var y = 4
var z = 13

var result1 = y + 2 * 9 % 2

var result2 = z / 2 + 4 * x

/*
 Reflect
 Write a calculation for the following requirement:

 We would like to display a score when a user solves a word puzzle.
 The score is calculated by summing together 3 values. The first value is
 the number of vowels multiplied by the vowel bonus. The second value is
 the number of consonants multiplied by the consonant bonus. And the third
 value is the length of the word multiplied by length bonus.
 */

var totalScore = 0

var vowels = 9
var consonants = 8
var vowelBonus = Int.random(in: 1..<11)
var consonantsBonus = Int.random(in: 1..<11)
var lengthBonus = Int.random(in: 1..<11)
var word = "I live in Taipei City"

/*
https://stackoverflow.com/questions/24037711/get-the-length-of-a-string
Swift 5 vs Swift 4 vs Swift 3
*/
var wordCount = word.count

var first_score = vowels * vowelBonus
var second_score = consonants * consonantsBonus
var third_score = wordCount * lengthBonus

totalScore += first_score
totalScore += second_score
totalScore += third_score

print(totalScore)
