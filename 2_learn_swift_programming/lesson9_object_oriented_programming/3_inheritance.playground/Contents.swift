import UIKit

/*
Class Inheritance
One powerful feature of classes not available to structs is inheritance.
Inheritance allows one class to take on the properties and methods of another
class, as well as add its own functionality.

To start, let's say we have a Guitar class defined as the following.
*/

class Guitar {
    let strings: Int
    let frets: Int
    
    init(strings: Int, frets: Int) {
        self.strings = strings
        self.frets = frets
    }
    func pluckString() {
        print("twang")
    }
}

class ElectricGuitar: Guitar {
    var volumeLevel: Float = 1.0
    var toneLevel: Float = 1.0
}

/*
Overriding Methods
Inheritance doesn't just let you add to a class - you can also override its
behavior. For example, since an electric guitar's volume affects its sound,
we can provide some custom functionality to the pluck() method.
*/

override func pluckString() {
    if volumeLevel > 0.7 {
        print("🎸🎸🎸 DRAOWWW")
    } else if volumeLevel > 0 {
        print("🎸 twang")
    } else { // volumeLevel is 0
        // Guitar's implementation of pluckString()
        super.pluckString()
    }
}

