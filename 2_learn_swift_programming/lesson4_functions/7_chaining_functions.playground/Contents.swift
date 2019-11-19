import UIKit

//var str = "Hello, playground"

// In some cases, you may want to take the value returned by a function and immediately
// use it to call another (or the same function). This is easily accomplished by chaining
// function calls together, and while it may look complicated at first, it is quite intuitive.

func addExcitementToString(string: String) -> String {
    return string + "!"
}

// Chained together twice
let excitedString = addExcitementToString(string: addExcitementToString(string: "yay"))


// Chained together four times
let reallyExcitedString = addExcitementToString(string: addExcitementToString(string: addExcitementToString(string: addExcitementToString(string: "Wowsers"))))
