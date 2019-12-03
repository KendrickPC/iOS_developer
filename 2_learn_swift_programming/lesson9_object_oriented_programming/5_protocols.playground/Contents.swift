import UIKit

// Swift Documentation for Protocols
// More information on Delegation.
// https://docs.swift.org/swift-book/LanguageGuide/Protocols.html#//apple_ref/doc/uid/TP40014097-CH25-ID276

// Introduction to Protocols Video:
// https://www.youtube.com/watch?v=QZjz2PL9IS8

// Here’s an implementation of a class that adopts and conforms to the RandomNumberGenerator protocol.
// This class implements a pseudorandom number generator algorithm known as a linear congruential generator:

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c)
            .truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}
let generator = LinearCongruentialGenerator()
print("Here's a random number: \(generator.random())")
// Prints "Here's a random number: 0.3746499199817101"
print("And another one: \(generator.random())")
// Prints "And another one: 0.729023776863283"

