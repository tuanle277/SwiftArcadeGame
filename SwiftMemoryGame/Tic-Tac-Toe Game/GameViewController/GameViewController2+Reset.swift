import UIKit

extension GameViewController2
{
    @IBAction func playAgainAction(_ sender: UIButton) {
        for i in tilesArr
        {
            i.removeFromSuperview()
        }
        currentPlayerLabel.text = "Player 1's turn"
        currentPlayerLabel.textColor = UIColor.black
        currentPlayer = 1
        filled = 0
        gameView.isUserInteractionEnabled = true
        gameBeingPlayed = []
        makeTiles()
    }
    
}
