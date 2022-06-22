import UIKit

extension GameViewController
{
    func flipToReveal(inpTile: tileLabel)
    {
            UIView.transition(with: inpTile,
                              duration: 0.5,
                              options: UIView.AnimationOptions.transitionFlipFromLeft,
                              animations:
                                {
                inpTile.text = "\(inpTile.data!)"
                inpTile.backgroundColor = UIColor.yellow
            }
                              ,
                              completion: nil
            )
    }
}
