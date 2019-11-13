import UIKit

//var str = "Hello, playground"

//Sometimes when we write functions, we may find ourselves using the same input values over and over again. In cases such as these, we can define a default value for a parameter and omit it from our function call. For example, consider this calculatePriceForMealWithTip(priceOfMeal: Double, tipPercentage: Double) function that takes the price of a meal and tip percentage and returns the total price:


func calculatePriceForMealWithTip(priceOfMeal: Double, tipPercentage: Double ) -> Double {
    return priceOfMeal + (priceOfMeal * tipPercentage)
}

calculatePriceForMealWithTip(priceOfMeal: 43.27, tipPercentage: 0.15)
calculatePriceForMealWithTip(priceOfMeal: 100.32, tipPercentage: 0.20)
calculatePriceForMealWithTip(priceOfMeal: 65.43, tipPercentage: 0.15)
calculatePriceForMealWithTip(priceOfMeal: 22.18, tipPercentage: 0.15)


//If we noticed that we kept calling this function with the same 15% tip percentage, it would be convenient to specify the default value of tip percentage as 0.15. We can do this by modifying our function definition and adding an equals sign and value to the parameter where we want to set a default value:

func calculatePriceFOrMealWithTip(priceOfMeal: Double, tipPercentage: Double = 0.15) -> Double {
    return priceOfMeal + (priceOfMeal * tipPercentage)
}

calculatePriceFOrMealWithTip(priceOfMeal: 43.27)
calculatePriceFOrMealWithTip(priceOfMeal: 100.32, tipPercentage: 0.20)
calculatePriceFOrMealWithTip(priceOfMeal: 65.43)
calculatePriceFOrMealWithTip(priceOfMeal: 22.18)
