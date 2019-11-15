import UIKit

let finishedHomework: Bool = true
let noSchoolTomorrow: Bool = false

var allowedToPlayVideoGames = finishedHomework || noSchoolTomorrow


let audienceRating = 85
let criticsRating = 75
let recommendedByFriend: Bool = true

let goWatchMovie = (audienceRating > 90 || criticsRating > 80) || recommendedByFriend

print(goWatchMovie)
