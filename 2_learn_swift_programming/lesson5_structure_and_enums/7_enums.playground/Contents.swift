import UIKit

enum Finger: Int {
    case thumb = 0
    case index = 1
    case middle = 2
    case ring = 3
    case pinky = 4
}

var pianoMessage = "The thumb is filed at \(Finger.thumb.rawValue)."
print(pianoMessage)
