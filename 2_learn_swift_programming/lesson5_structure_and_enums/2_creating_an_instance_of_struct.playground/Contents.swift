import UIKit

struct Student {
    let name: String
    var age: Int = 0
    var school: String
}

var Kendrick = Student(name: "Kenderson Chang", age: 21, school: "University of California Santa Barbara")
print(Kendrick)


// More Constructor Examples:
struct Point2D {
    var x: Int = 0
    var y: Int = 0
}

struct GeoLocation {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}

var characterPosition = Point2D(x: 10, y: 10)
let udacityCoordinates = GeoLocation(latitude: 37.400073, longitude: -122.108400)

// Practice: Movie Struct Initialization
// Using the default constructor, create a new instance of the Movie struct.
// Assign the instance to a constant called myMovie.

struct Movie {
    let title: String
    let year: Int
}
// ↓ your code here ↓
let myMovie = Movie(title: "Good Will Hunting", year: 1997)
//let myMovie = Movie(title: "Fight Club", year: 1999)

print(myMovie)
