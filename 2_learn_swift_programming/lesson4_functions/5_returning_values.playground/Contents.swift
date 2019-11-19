import UIKit

// Practice: Area of Triangle
// Define a function called areaOfTriangle that takes 2 Double parameters:
// base and height (in order). The function should return a Double that is
// the area of a triangle which is 0.5 * base * height.
//
// Then try calling the function with any values you like, and assign
// the result to a constant area.

func areaOfTriangle(base: Double, height: Double) -> Double {
    let area = (0.5 * base * height)
    return area
}

print(areaOfTriangle(base: 17.43, height: 15.33))

