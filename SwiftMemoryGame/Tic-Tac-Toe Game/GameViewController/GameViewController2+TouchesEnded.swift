import UIKit

extension GameViewController2
{
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
    let myTouch = touches.first
    if let tappedTile = myTouch?.view as? UILabel
    {
        if currentPlayer == 1
        {
            tappedTile.text = "O"
            tappedTile.alpha = 0.0
            UIView.animate(withDuration: 1.0, //Time duration you want,
                        delay: 0.0,
                        animations: { () in tappedTile.alpha = 1.0 })
            gameBeingPlayed[game[tappedTile.tag][0]][game[tappedTile.tag][1]] = "O"
            currentPlayer += 1
            self.currentPlayerLabel.text = "Player 2's turn"
            checkWin(winner: "0")
        }
        else
        {
            tappedTile.text = "X"
            tappedTile.alpha = 0.0
            UIView.animate(withDuration: 1.0, //Time duration you want,
                        delay: 0.0,
                        animations: { () in tappedTile.alpha = 1.0 })
            gameBeingPlayed[game[tappedTile.tag][0]][game[tappedTile.tag][1]] = "X"
            currentPlayer -= 1
            self.currentPlayerLabel.text = "Player 1's turn"
            checkWin(winner: "X")
        }
        tappedTile.font = UIFont.systemFont(ofSize: tappedTile.frame.height)
        tappedTile.isUserInteractionEnabled = false
    }
    }
}
