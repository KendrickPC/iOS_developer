import UIKit

// To access their properties, we use the following syntax:
// instanceName.propertyName

// Practice: Accessing Student Struct Properties
struct Student {
    let name: String
    var age: Int
    var school: String
}

var ayush = Student(name: "Ayush Saraswat", age: 19, school: "Udacity")

// Simply fill in the empty \()s with ayush's information. Do not modify the sentence
print("\(ayush.name) is \(ayush.age) years old and attends \(ayush.school).")


// Example #3
// Using dot notation, try changing the x and y values of characterPosition.
struct Point2D {
    var x: Int = 0
    var y: Int = 0
}

var characterPosition = Point2D(x: 10, y: 10)
// ↓ change the x and y values ↓

characterPosition.x = 25
characterPosition.y = 35

print("The character position is located at \(characterPosition.x) and \(characterPosition.y).")
print("The End.")


