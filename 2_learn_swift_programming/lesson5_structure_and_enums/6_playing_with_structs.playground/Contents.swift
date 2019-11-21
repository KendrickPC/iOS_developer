import UIKit

//var str = "Hello, playground"


struct Team {
    var name: String
    var stadium: String
}

struct Athlete {
    let name: String
    let hometown: String
    var currentTeam: Team
    var age: Int
}

let braves = Team(name: "Atlanta Braves", stadium: "Turner Field")
var freddie = Athlete(name: "Freddie Freeman", hometown: "Fountain Valley, California", currentTeam: braves, age: 25)

// braves.name = "Boston Braves"

// freddie.hometown = "Atlanta, Georgia"

var myFavoriteTeam = freddie.currentTeam
myFavoriteTeam = Team(name: "San Francisco Giants", stadium: "AT&T Park")

freddie.age = 26

freddie.currentTeam = Team(name: "Miami Marlins", stadium: "Marlins Park")
