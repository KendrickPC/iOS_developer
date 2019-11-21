import UIKit

/*
https://knowledge.udacity.com/questions/32885
https://knowledge.udacity.com/questions/17643
*/

/*
Practice: Defining Product Struct
Define a struct called Product with the following properties:

    name: a String constant
    price: a Double variable

Then, add a mutating method called discount() that takes no parameters
and does not return a value. The method should decrease the price by
10 cents (0.1).

Finally, add a computed String property called formattedPrice that
 formats the price with a dollar sign, as shown below.

    "$\(price)"
*/

struct Product {
    let name: String
    var price: Double
    
    mutating func discount() {
        price -= 0.10
    }
    
    var formattedPrice: String {
        return "$\(price)"
    }
}

var iPhone11ProMax = Product(name: "iPhone 11 Pro Max" , price: 10)

iPhone11ProMax.discount()
print(iPhone11ProMax.formattedPrice)

