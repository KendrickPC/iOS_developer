import UIKit

//One powerful feature of functions is their ability to return a value. To return a value from a function, the following syntax is used:

    //func nameOfFunction(/* parameters */) -> Type {
    //    var valueToReturn: Type
    //    // Rest of function
    //    return valueToReturn
    //}

//Here we can see that in addition to defining a function's name and parameters, we can specify a return type by adding an arrow and type. Here are two examples of functions that return a type:

// Example 1:
func calculateTip(priceOfMeal: Double) -> Double {
    return priceOfMeal * 0.15
}

calculateTip(priceOfMeal: 9.99)
print(calculateTip(priceOfMeal: 9.99))

// Example 2:
func isValidLength(password: String) -> Bool {
    if password.count >= 8 {
        return true
    } else {
        return false
    }
}

isValidLength(password: "Kenderson")
print(isValidLength(password: "Winifred"))



//Accessing Return Values
//To access a value returned from a function, we use the same assignment syntax we are familiar with when creating variables or constants. For example, to access the value returned by calculateTip(priceOfMeal: Double), we can do the following:

// * Remember to change the variables because func calculateTip has already been used above for examples 1 and 2 etc... *

//Example 3:
func calculateTip_example_3(priceOfLunch: Double) -> Double {
    return priceOfLunch * 0.15
}

let priceOfLunch = 43.27
let lunchTip = calculateTip_example_3(priceOfLunch: priceOfLunch)
