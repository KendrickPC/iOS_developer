import UIKit

// Exercise 1:
let arrayOfInts = [10,8,9]
let biggerArrayOfInts = [6,5,4,3]

let arraySizeBool = arrayOfInts.count < biggerArrayOfInts.count

// Exercise 2:
let anotherAlphabeticalBool = "xerox" > "xylophone"

// Exercise 3:
var age = 29
let applySeniorDiscount = age >= 65


// && and ||
//let compoundBool = firstBooleanExpression && secondBooleanExpression

let technicalSkills: Bool = true
let communicationSkills: Bool = true

let hire = technicalSkills && communicationSkills

//let compoundBool = firstBooleanExpression || secondBooleanExpression

let finishedHomework = true
let noSchoolTomorrow = false

let allowedToPlayVideoGames = finishedHomework || noSchoolTomorrow

let audienceRating = 85
let criticsRating = 75
let recommendedByFriend = true

let goWatchMovie = (audienceRating > 90 && criticsRating > 80) || recommendedByFriend
