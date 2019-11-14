import UIKit

var gamePoints = 1000
var numberOfLives = 3
var numberOfDeaths = 0

let pointsPerLife = 100
let pointsPerDeath = 0 

/*
Reference to implimenting:
 https://stackoverflow.com/questions/51654332/wanting-to-generate-a-random-maths-function-using-swift
*/

var randomBonus = Int.random(in: 0..<101)

// Note: randomBonus always returns 20

var totalPoints = gamePoints + numberOfLives * pointsPerLife - numberOfDeaths * pointsPerDeath + 20

var lifeBonus = numberOfLives * pointsPerLife

var deathBonus = numberOfDeaths * pointsPerDeath

var newTotalPoints = gamePoints + lifeBonus - deathBonus + randomBonus

print(randomBonus)
print(randomBonus)


// Order of Operations
// PEMDAS


