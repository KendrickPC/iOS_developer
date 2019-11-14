import UIKit

//var str = "Hello, playground"

var numberOfServingsForRecipe = 4
var desiredNumberOfServings = 8

var servingFactor = desiredNumberOfServings / numberOfServingsForRecipe

// Calculate pounds of tomatoes
var poundsOfTomatoesForRecipe = 2

var amountToUseToday = poundsOfTomatoesForRecipe * servingFactor

print(amountToUseToday)

