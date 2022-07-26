import UIKit

extension GameViewController
{
    func flipToWrong(firstTile: tileLabel, secondTile: tileLabel)
    {
        UIView.transition(with: secondTile,
                          duration: 0.5,
                          options: UIView.AnimationOptions.transitionFlipFromRight,
                          animations:
                            {
            secondTile.text = ""
            secondTile.backgroundColor = UIColor.systemTeal
        }
                          ,
                          completion: nil
        )
        UIView.transition(with: firstTile,
                          duration: 0.5,
                          options: UIView.AnimationOptions.transitionFlipFromRight,
                          animations:
                            {
            firstTile.text = ""
            firstTile.backgroundColor = UIColor.systemTeal
        }
                          ,
                          completion: nil
        )
        firstTile.isFlipped = false
        secondTile.isFlipped = false
    }
}
