import UIKit

// Initializer Syntax
var cutlery: Set = ["spork", "knife", "spoon", "spoon"]
cutlery.count

var flowers: Set<Character> = ["🌺", "🌼", "🌸"]

// Literal Syntax
var utensils = Set<String>()
var trees = Set<Character>()

trees.insert("🌲")
trees.insert("😜")
trees.insert("💩")

print(trees)


/*
Practice: Count Distinct Items
Using your knowledge of different collection types, implement the function
countDistinct(numbers: [Int]) to return the number of distinct elements in
the array. For example:
 
    countDistinct(numbers: [20, 10, 10, 30, 20])
 
would return 3, because 10, 20, and 30 are the distinct elements.
*/

func countDistinct(numbers: [Int]) -> Int {
    let array:Array<Int> = numbers
    let count = NSSet(array: array).count
    return count
}

print(countDistinct(numbers: [20, 10, 10, 30, 20]))

// https://developer.apple.com/documentation/foundation/nsset#//apple_ref/occ/cl/NSSet
// https://stackoverflow.com/questions/27862499/counting-unique-items-in-array-swift

//let array:Array<Int> = [1,3,2,4,6,1,3,2]
//let count = NSSet(array: array).count
//println(count)
