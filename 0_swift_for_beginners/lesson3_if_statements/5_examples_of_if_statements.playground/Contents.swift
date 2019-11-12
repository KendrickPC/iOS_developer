import UIKit

var str = "Hello, playground"

func goEat() {
    print("nom nom")
}

func buyTeddy() {
    print("snuggle snuggle")
}

func watchAMovie() {
    print("Where is this movie quote from?")
}

// Example 1:
var hungry = true

if hungry {
    goEat()
}

// Example 2:
var wantTeddyBear = true
var haveMoney = true

if wantTeddyBear && haveMoney {
    buyTeddy()
}

// Example 3:
var raining = true
if raining {
    watchAMovie()
}


