import UIKit

extension GameViewController
{
    func flipToRight(firstTile: tileLabel, secondTile: tileLabel)
    {
        UIView.transition(with: firstTile,
                          duration: 0.5,
                          options: UIView.AnimationOptions.transitionFlipFromLeft,
                          animations:
                            {
            firstTile.text = ""
            firstTile.backgroundColor = UIColor.green
        }
                          ,
                          completion: nil
        )
        UIView.transition(with: secondTile,
                          duration: 0.5,
                          options: UIView.AnimationOptions.transitionFlipFromLeft,
                          animations:
                            {
            secondTile.text = ""
            secondTile.backgroundColor = UIColor.green
        }
                          ,
                          completion: nil
        )

        firstTile.isUserInteractionEnabled = false
        secondTile.isUserInteractionEnabled = false
        
        // since count is now the number of pairs, everytime get right count decrements, when count == 0 -> win the game
        count -= 1
        if count == 0{
            gameTimer.invalidate()
            takeWinnerInfo()
        }
    }
}
