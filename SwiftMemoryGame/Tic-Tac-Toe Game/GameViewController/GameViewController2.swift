import UIKit

class GameViewController2: UIViewController {
    @IBOutlet weak var gameView: UIView!
    @IBOutlet weak var currentPlayerLabel: UILabel!
    @IBOutlet weak var player1Score: UILabel!
    @IBOutlet weak var player2Score: UILabel!
    
    var gameMode: Int = 3
    var currentPlayer: Int = 1
    var player1Choice: String!
    var player2Choice: String!
    var choice: UILabel!
    var game: Array<Array<Int>> = []
    var gameBeingPlayed: Array<Array<String>> = []
    var player1sScore: Int = 0
    var player2sScore: Int = 0
    var tilesArr: Array<UIView> = []

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
