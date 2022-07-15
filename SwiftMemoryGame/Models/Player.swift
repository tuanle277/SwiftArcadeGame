import UIKit

final class Player: NSObject {
    
    var name: String!
    var minutePlayed: Int!
    var secondPlayed: Int!
    var timeBeaten: String!
    var gameModePlayed: String!
    
    init(newName: String, newTime: String, newGame: String, newMinute: Int, newSecond: Int) {
        self.name = newName
        self.timeBeaten = newTime
        self.gameModePlayed = newGame
        self.secondPlayed = newSecond
        self.minutePlayed = newMinute
    }
}
