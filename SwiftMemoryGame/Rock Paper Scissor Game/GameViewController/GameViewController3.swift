import UIKit

class GameViewController3: UIViewController {
    @IBOutlet weak var rockView: UIView!
    @IBOutlet weak var paperView: UIView!
    @IBOutlet weak var scissorView: UIView!
    @IBOutlet weak var choicesBackground: UIView!
    @IBOutlet weak var currentPlayerLabel: UILabel!
    @IBOutlet weak var botScore: UILabel!
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var botResult: UILabel!
    @IBOutlet weak var playerResult: UILabel!
    
    var playerChoice: String!
    let choices: Array<String> = ["Rock", "Paper", "Scissor"]
    var playersScore: Int = 0
    var botsScore: Int = 0
    static var gameLoaded: Bool!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
