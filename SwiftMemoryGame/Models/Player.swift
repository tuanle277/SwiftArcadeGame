import UIKit

final class Player: NSObject {
    
    var name: String!
    var minutePlayed: Int!
    var secondPlayed: Int!
    var numTimeBeaten: String!
    var numGameModePlayed: String!
    var dinTimeBeaten: String!
    var dinIntTimeBeaten: Int!
    
    init(newName: String, newTime: String, newGame: String, newMinute: Int, newSecond: Int) {
        self.name = newName
        self.numTimeBeaten = newTime
        self.numGameModePlayed = newGame
        self.secondPlayed = newSecond
        self.minutePlayed = newMinute
    }
    
    init(newName: String, newTime: String, newIntTime: Int)
    {
        self.name = newName
        self.dinTimeBeaten = newTime
        self.dinIntTimeBeaten = newIntTime
    }
}
