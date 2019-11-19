import UIKit

//var str = "Hello, playground"


// Practice: End of Year Bonus
// Define a function called endOfYearBonus that takes 3 Double parameters: basePay, bonus, and percentBonus.
// percentBonus should have a default value of 0.10. The function should return a Double that is equal to
// basePay + bonus + (basePay * percentBonus).
//
// Call the function (and print the result) with and without providing a percentBonus and observe the output.

func endOfYearBonus(basePay: Double, bonus: Double, percentBonus: Double = 0.10) -> Double {
    return basePay + bonus + (basePay * percentBonus)
}

print(endOfYearBonus(basePay: 70000, bonus: 5000))
print(endOfYearBonus(basePay: 80000, bonus: 7000, percentBonus: 0.085))
