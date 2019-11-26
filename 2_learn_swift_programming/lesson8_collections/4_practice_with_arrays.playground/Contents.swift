import UIKit

/*
Practice: Print Array Elements
Finish implementing printElements(array: [Int]) to print out all the elements
of array, each on a separate line.
*/

func printElements(array: [Int]) {
    for i in array {
        print(i)
    }
}
print("Example #1")
print(printElements(array: [1, 3, 5, 7, 9]))

/*
Practice: Remove Array Elements
Finish implementing removeElements(array: [Int], n: Int) to return a new
array with the first n elements removed. For example, calling
removeElements(array: [1, 2, 3, 4], n: 2) would return [3, 4] because the
first element 1, and the second element 2 would be removed.
*/

func removeElements(array: [Int], n: Int) -> [Int] {
    // You may need to modify newArray
    var newArray = array
    newArray.removeFirst(n)
    return newArray
}

print("\nExample #2")
print(removeElements(array: [1, 2, 3, 4], n: 2))
