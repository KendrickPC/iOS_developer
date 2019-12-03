import UIKit

/*
Polymorphism
Inheritance, or the ability of one class to take on the properties and methods of a superclass, leads us to the next topic - polymorphism.

Polymorphism means “many forms.” It is a programming language feature by which a type can be substituted for another type. For example, since it inherits from a Guitar, an ElectricGuitar can be substituted anywhere that a Guitar would be used. In other words, an ElectricGuitar is a form of Guitar.

Polymorphism allows for simpler code that avoids unnecessary specificity, and code that is flexible and expandable because it's applicable to more than one type. If we were to add additional subclasses of Guitar, we could still use any of these types where a Guitar is used.

override is used to indicate that a subclass's method implementation will be substituted for a superclass's method implementation. This is an aspect of polymorphism through inheritance.

We saw an example of polymorphism previously when we used override to refer to a single Guitar type, and produced different behavior by substituting in an ElectricGuitar instead of a Guitar.

We can see an example of polymorphism in action below. Because anyGuitar's type is Guitar we can assign any subclass of Guitar, including an ElectricGuitar to that variable.
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


// anyGuitar can hold a Guitar, ElectricGuitar, or any other subclass of Guitar




var anyGuitar: Guitar = Guitar(strings: 6, frets: 20)
anyGuitar.pluckString()

anyGuitar = ElectricGuitar(strings: 6, frets: 20)
anyGuitar.pluckString()

/*
 Even though anyGuitar()'s type is still Guitar, calling pluckString() will call the custom method we defined for ElectricGuitar. As a result, we can keep our code involving Guitar instances reusable, without sacrificing the functionality of any subclasses that happen to override a method.
 */


/*
 Type Casting
 Finally, if we know that anyGuitar is assigned an ElectricGuitar and we want to access the toneLevel property, we can convert the types with a special keyword: as. When using the as keyword the variable you want to convert goes on the left and the type you're converting to goes on the right.
 
 */

// result = variableToConvert as NewType

// Force unwrap
let electricGuitar = anyGuitar as! ElectricGuitar
electricGuitar.toneLevel

// Force unwrap
if let electricGuitar = anyGuitar as? ElectricGuitar {
    electricGuitar.toneLevel
}

/*
You'll also notice the use of as! and as? in this example. This may seem complicated but it's really the same concept you learned about unwrapping optionals. Since there's no guarantee that anyGuitar will actually be an ElectricGuitar, casting to an ElectricGuitar returns an optional of type Guitar?. To forcibly unwrap the result, we use as! and to conditionally unwrap with if let, we use as?.
*/
