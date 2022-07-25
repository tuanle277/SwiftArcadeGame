import UIKit

extension GameViewController
{
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        if tileFlipped < 2
        {
            let myTouch = touches.first
            if let tappedTile = myTouch?.view as? tileLabel
            {
                // this check is to see if the tile is flipped >< don't want be able to turn the same tile
                if tappedTile.isFlipped == false
                {
                    flipToReveal(inpTile: tappedTile)
                    if (!comparing)
                    {
                        firstTile = tappedTile
                        firstTile.isFlipped = true
                    }
                    else
                    {
                        // only compare after the second tile is flipped
                        secondTile = tappedTile
                        self.revealThenCompare(inpTile: tappedTile)
                    }
                    tileFlipped += 1
                    comparing = !comparing
                }
              
            }
        }

    }
}
