import UIKit

//var str = "Hello, playground"

enum CaliforniaPark {
    case Yosemite, DeathValley, Lasson, Sequoia
}

var warning = ""
var destination = CaliforniaPark.DeathValley

switch destination {
    case .Yosemite:
        warning = "Beware of aggresive bears!"
    case .DeathValley:
        warning = "Beware of dehydration!"
    case .Lasson:
        warning = "Watch out for boiling pools!"
    case .Sequoia:
        warning = "Watch out for falling trees!"
}
