import UIKit

enum Instrument: String {
    case banjo, fiddle
}

class Musician {
    var instrument: Instrument

    init(instrument: Instrument) {
        self.instrument = instrument
    }
}
let duo = [Musician(instrument: .fiddle), Musician(instrument: .banjo)]

struct MusicianStruct {
    var instrument: Instrument
}

// https://developer.apple.com/documentation/swift/array
