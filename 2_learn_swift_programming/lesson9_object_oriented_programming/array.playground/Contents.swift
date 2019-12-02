import UIKit

// https://developer.apple.com/documentation/swift/array

// An array of 'Int' elements
let oddNumbers = [1, 3, 5, 7, 9, 11, 13, 15]

// An array of 'String' elements
let streets = ["Albemarle", "Brandywine", "Chesapeake"]

// You can create an empty array by specifying the Element type of your
// array in the declaration. For example:

// Shortened forms are preferred
var emptyDoubles: [Double] = []

// The full type name is also allowed
var emptyFloats: Array<Float> = Array()

// If you need an array that is preinitialized with a fixed number of
// default values, use the Array(repeating:count:) initializer.

var digitCounts = Array(repeating: 0, count: 10)
print(digitCounts)
// Prints "[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]"

// Accessing Array Values
// When you need to perform an operation on all of an array’s elements,
// use a for-in loop to iterate through the array’s contents.

for street in streets {
    print("I don't live on \(street).")
}
// Prints "I don't live on Albemarle."
// Prints "I don't live on Brandywine."
// Prints "I don't live on Chesapeake."

// Use the isEmpty property to check quickly whether an array has any
// elements, or use the count property to find the number of elements
// in the array.

if oddNumbers.isEmpty {
    print("I don't know any odd numbers.")
} else {
    print("I know \(oddNumbers.count) odd numbers.")
}
// Prints "I know 8 odd numbers."

// Use the first and last properties for safe access to the value of the
// array’s first and last elements. If the array is empty, these
// properties are nil.

if let firstElement = oddNumbers.first, let lastElement = oddNumbers.last {
    print(firstElement, lastElement, separator: ", ")
}
// Prints "1, 15"

//print(emptyDoubles.first, emptyDoubles.last, separator: ", ")
// Prints "nil, nil"

/*
 You can access individual array elements through a subscript. The first
 element of a nonempty array is always at index zero. You can subscript an
 array with any integer from zero up to, but not including, the count of the
 array. Using a negative number or an index equal to or greater than count
 triggers a runtime error. For example:
 */

print(oddNumbers[0], oddNumbers[3], separator: ", ")
// Prints "1, 7"

// print(emptyDoubles[0])
// Triggers runtime error: Index out of range

/*
Adding and Removing Elements
Suppose you need to store a list of the names of students that are signed
up for a class you’re teaching. During the registration period, you need
to add and remove names as students add and drop the class.
*/

var students = ["Ben", "Ivy", "Jordell"]

/*
To add single elements to the end of an array, use the append(_:) method.
Add multiple elements at the same time by passing another array or a
sequence of any kind to the append(contentsOf:) method.
*/

students.append("Maxime")
students.append(contentsOf: ["Shakia", "William"])
// ["Ben", "Ivy", "Jordell", "Maxime", "Shakia", "William"]

students.insert("Liam", at: 3)
// ["Ben", "Ivy", "Jordell", "Liam", "Maxime", "Shakia", "William"]

print(students)

// To remove elements from an array, use the remove(at:), removeSubrange(_:),
// and removeLast() methods.

// Ben's family is moving to another state
students.remove(at: 0)
// ["Ivy", "Jordell", "Liam", "Maxime", "Shakia", "William"]

// William is signing up for a different class
students.removeLast()
// ["Ivy", "Jordell", "Liam", "Maxime", "Shakia"]


// You can replace an existing element with a new value by assigning
// the new value to the subscript.

if let i = students.firstIndex(of: "Maxime") {
    students[i] = "Max"
}
// Replaces Maxine with Max
// ["Ivy", "Jordell", "Liam", "Max", "Shakia"]

/*
 Modifying Copies of Arrays
 Each array has an independent value that includes the values of all of its
 elements. For simple types such as integers and other structures, this means
 that when you change a value in one array, the value of that element does
 not change in any copies of the array. For example:
 */

var numbers = [1, 2, 3, 4, 5]
var numbersCopy = numbers
numbers[0] = 100
print(numbers)
// Prints "[100, 2, 3, 4, 5]"
print(numbersCopy)
// Prints "[1, 2, 3, 4, 5]"

/*
 If the elements in an array are instances of a class, the semantics are the
 same, though they might appear different at first. In this case, the values
 stored in the array are references to objects that live outside the array.
 If you change a reference to an object in one array, only that array has a
 reference to the new object. However, if two arrays contain references to
 the same object, you can observe changes to that object’s properties from
 both arrays. For example:
 */

// An integer type with reference semantics
class IntegerReference {
    var value = 10
}
var firstIntegers = [IntegerReference(), IntegerReference()]
var secondIntegers = firstIntegers

// Modifications to an instance are visible from either array
firstIntegers[0].value = 100
print(secondIntegers[0].value)
// Prints "100"

// Replacements, additions, and removals are still visible
// only in the modified array
firstIntegers[0] = IntegerReference()
print(firstIntegers[0].value)
// Prints "10"
print(secondIntegers[0].value)
// Prints "100"

/*
 Arrays, like all variable-size collections in the standard library, use copy-on-write optimization. Multiple copies of an array share the same storage until you modify one of the copies. When that happens, the array being modified replaces its storage with a uniquely owned copy of itself, which is then modified in place. Optimizations are sometimes applied that can reduce the amount of copying.

 This means that if an array is sharing storage with other copies, the first mutating operation on that array incurs the cost of copying the array. An array that is the sole owner of its storage can perform mutating operations in place.

 In the example below, a numbers array is created along with two copies that share the same storage. When the original numbers array is modified, it makes a unique copy of its storage before making the modification. Further modifications to numbers are made in place, while the two copies continue to share the original storage.
 */

var numbers = [1, 2, 3, 4, 5]
var firstCopy = numbers
var secondCopy = numbers

// The storage for 'numbers' is copied here
numbers[0] = 100
numbers[1] = 200
numbers[2] = 300
// 'numbers' is [100, 200, 300, 4, 5]
// 'firstCopy' and 'secondCopy' are [1, 2, 3, 4, 5]


/*
 Bridging Between Array and NSArray
 When you need to access APIs that require data in an NSArray instance instead of Array, use the type-cast
 operator (as) to bridge your instance. For bridging to be possible, the Element type of your array must be
 a class, an @objc protocol (a protocol imported from Objective-C or marked with the @objc attribute), or a
 type that bridges to a Foundation type.

 The following example shows how you can bridge an Array instance to NSArray to use the
 write(to:atomically:) method. In this example, the colors array can be bridged to NSArray because the
 colors array’s String elements bridge to NSString. The compiler prevents bridging the moreColors array, on
 the other hand, because its Element type is Optional<String>, which does not bridge to a Foundation type.
 */


let colors = ["periwinkle", "rose", "moss"]
let moreColors: [String?] = ["ochre", "pine"]

let url = NSURL(fileURLWithPath: "names.plist")
(colors as NSArray).write(to: url, atomically: true)
// true

(moreColors as NSArray).write(to: url, atomically: true)
// error: cannot convert value of type '[String?]' to type 'NSArray'
