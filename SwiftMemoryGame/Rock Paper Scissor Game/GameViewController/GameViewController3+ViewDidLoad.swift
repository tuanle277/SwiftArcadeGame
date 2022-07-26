import UIKit

extension GameViewController3
{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.currentPlayerLabel.font = UIFont(name: "Times New Roman Bold", size: 40)
        self.currentPlayerLabel.adjustsFontSizeToFitWidth = true
        self.choicesBackground.alpha = 0.1
        self.choicesBackground.center = CGPoint(x: self.choicesBackground.center.x, y: self.choicesBackground.center.y + 500)
        GameViewController3.gameLoaded = false
        configureActions()
    }
}
