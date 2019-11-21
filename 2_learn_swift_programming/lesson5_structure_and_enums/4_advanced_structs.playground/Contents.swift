import UIKit

/*
Nested Structures:
Structs can have other structs as property values allowing you to model
complex real-world objects.
*/
// Example 1:
struct Song {
    let title: String
    let length: String
    let artist: Artist
}

struct Artist {
    let firstName: String
    let lastName: String
    let age: Int
    let hometown: String
}

let jamesArthur = Artist(firstName: "James", lastName: "Arthur", age: 31, hometown: "Middlesbrough, England")

let sayYouWontLetGo = Song(title: "Say You Won't Let Go", length: "3.31", artist: jamesArthur)

sayYouWontLetGo.artist

// Example 2:
/*
struct Beaker {
    var volumeMilliliters: Double

    func canContainContents(otherBeaker: Beaker) -> Bool {
        return volumeMilliliters >= otherBeaker.volumeMilliliters
    }
    
    // If, however, a method tries to modify (or mutate) one of the struct's
    // properties, then the mutating keyword must be added before func.
    // For example:
    mutating func increaseCapacity() {
        volumeMilliliters += 500
    }
}

let beaker1 = Beaker(volumeMilliliters: 500)
let beaker2 = Beaker(volumeMilliliters: 1000)
let canContainContents: Bool = beaker1.canContainContents(otherBeaker: beaker2)
*/
 
// Example 3:
struct Beaker {
    let volumeMilliliters: Double
    static var madeIn = "China"

    // These are US ounces
    var volumeOunces: Double {
        return volumeMilliliters * 0.033814
    }

    func canContainContents(otherBeaker: Beaker) -> Bool {
        return volumeMilliliters >= otherBeaker.volumeMilliliters
    }
}

let beaker1 = Beaker(volumeMilliliters: 500)
let beaker2 = Beaker(volumeMilliliters: 1000)
let canContainContents: Bool = beaker1.canContainContents(otherBeaker: beaker2)

// In fact, when we change the value of a static property with dot notation,
// we reference the type name and not a specific instance (Beaker.madeIn).


