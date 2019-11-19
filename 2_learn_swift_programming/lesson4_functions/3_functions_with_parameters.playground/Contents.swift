import UIKit

//var str = "Hello, playground"
func sayHelloToStudent(student: String) {
    print("Hello \(student)")
}

sayHelloToStudent(student: "Kenneth")


// Write a function called loveIt that takes one string parameter called subject and prints
// a string in the format: "I love [subject]".
//
// For example, if subject were "Swift", it would print "I love Swift".

func loveIt(subject: String) {
    print("I love \(subject)")
}

loveIt(subject: "Swift")

// Parameters vs. Arguments
// There are some special terms here that require special attention. When we look at the
// definition of a function like sayHelloToStudent(student: String), any input values that
// are specified are called parameters. Then, when we actually call a function, the input
// values that are passed to the function are known as arguments.

// Functions with Multiple Parameters:
func greetStudent(student: String, school: String) {
    print("Hello \(student). Welcome to the \(school).")
}

greetStudent(student: "Kenderson", school: "Udacity School of Hard Knocks")

// Practice: Area of Rectangle
// Define and call a function called areaOfRectangle that takes two Int parameters,
// length, and width, and prints the result of length * width.
//
// Once you've written the function, try calling it with various arguments to see
// the output..

func areaOfRectangle(length: Int, width: Int) {
    print(length * width)
}

areaOfRectangle(length: 10, width: 22)

//Practice: Sum or Difference
//Define and call a function called sumOrDifference with the following parameters.
//
//a - an Int
//b - an Int
//sum - a Bool
//If the sum is true, then the function should print the sum a + b. Otherwise, it should print the difference a - b.
//
//Try calling the function with different arguments to see the output.

func sumOrDifference(a: Int, b: Int, sum: Bool) {
    if sum == true {
        print(a + b)
    } else {
        print(a - b)
    }
}

sumOrDifference(a: 8, b: 5, sum: true)
sumOrDifference(a: 8, b: 5, sum: false)
