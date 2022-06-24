import UIKit

class GameViewController: UIViewController {
    var gameEnd: Int!
    var gameMode: Int = 4
    var count: Int = 0
    var tileSize: CGFloat!
    var valueArr: Array<Int> = []
    var firstTile: tileLabel!
    var secondTile: tileLabel!
    var comparing: Bool = false
    let gameModes: Array<Int> = [4, 6, 8]
    var tilesArr: Array<tileLabel> = []
    var gameTime: Int = 0
    var gameTimer: Timer!
    var tileFlipped: Int = 0
    static var minutePlayed: Int!
    static var secondPlayed: Int!

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var gameView: UIView!
    @IBOutlet weak var resultLabel: UILabel!
}
