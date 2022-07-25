import UIKit

extension GameViewController
{
    func compare()
    {
        if firstTile.data == secondTile.data
            {
                flipToRight(firstTile: firstTile, secondTile: secondTile)
            }
            else
            {
                flipToWrong(firstTile: firstTile, secondTile: secondTile)
            }
            tileFlipped = 0
    }
}
  
