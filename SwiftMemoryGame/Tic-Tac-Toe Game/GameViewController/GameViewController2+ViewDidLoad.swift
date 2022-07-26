import UIKit

extension GameViewController2
{
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTiles()
        self.currentPlayerLabel.font = UIFont(name: "Times New Roman Bold", size: 50)
        self.currentPlayerLabel.adjustsFontSizeToFitWidth = true
        self.currentPlayerLabel.text = "Player 1's turn"
    }
}
