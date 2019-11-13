import UIKit

//var str = "Hello, playground"

// Google Search: error: missing argument label in call
// https://stackoverflow.com/questions/24050844/swift-missing-argument-label-xxx-in-call

let kenneth = "Kenneth"
var winnie = "Winifred"
let ontime = false
var punctual = true

func greetStudent(student: String, lateForClass: Bool) {
    if lateForClass {
        print("\(student)... you're late!")
    } else {
        print("Glad you could join us today \(student) =P ")
    }
}

greetStudent(student: kenneth, lateForClass: ontime)
greetStudent(student: winnie, lateForClass: punctual)
