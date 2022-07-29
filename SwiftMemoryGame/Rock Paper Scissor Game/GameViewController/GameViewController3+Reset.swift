import UIKit

extension GameViewController3
{
    @IBAction func resetAction(_ sender: UIButton) {
        self.choicesBackground.isUserInteractionEnabled = true
        self.currentPlayerLabel.textColor = UIColor.black
        self.playerResult.text = ""
        self.botResult.text = ""
        self.currentPlayerLabel.text = ""
    }
}
