import UIKit

class Player: NSObject {
    
    var name: String!
    var timeBeaten: String!
    var gameModePlayed: String!
    
    init(newName: String, newTime: String, newGame: String) {
        self.name = newName
        self.timeBeaten = newTime
        self.gameModePlayed = newGame
    }

}
