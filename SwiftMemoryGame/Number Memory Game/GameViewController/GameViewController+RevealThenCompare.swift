import UIKit

extension GameViewController
{
    func revealThenCompare(inpTile: tileLabel)
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
                          completion: {(res) in self.compare()}
        )
    }
}
