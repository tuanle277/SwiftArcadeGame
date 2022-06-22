import Foundation
import UIKit

extension GameViewController
{
    func makeTiles () {
        
        // create an array of number from 1 to half the number of total cells
        for _ in 0..<2
        {
            count =  1
            for _ in 0..<gameMode * gameMode / 2
            {
                valueArr.append(count)
                count += 1
            }
        }
        
        // this count decrements itself into half of the number of tiles
        count -= 1
        
        // configure tiles' designs and their initial positions in the game view
        let tileWidth = gameView.frame.size.width / CGFloat (gameMode)
        let tileHeight = gameView.frame.size.height / CGFloat (gameMode)
        let tileCgSize = CGSize (width: tileWidth - 5, height: tileHeight - 5)
        var xCen = tileWidth / 2.0
        var yCen = tileHeight / 2.0
        
        // placing them in the game view
        for _ in 0..<gameMode
        {
            for _ in 0..<gameMode
            {
                let tile = tileLabel (frame: CGRect (origin: CGPoint.zero, size: tileCgSize))
                tilesArr.append(tile)
                var randIndex = Int (arc4random_uniform(UInt32(valueArr.count)))
                tile.isUserInteractionEnabled = true
                tile.data = "\(valueArr[randIndex])"
                tile.textColor = UIColor.black
                valueArr.remove(at: randIndex)
                tile.text = tileLabel.question
                tile.font = UIFont.systemFont(ofSize: 32)
                tile.textAlignment = NSTextAlignment.center
                let tileCen = CGPoint(x: xCen, y: yCen)
                tile.center = tileCen
                xCen += tileWidth
                tile.backgroundColor = UIColor.orange
                gameView.addSubview(tile)
            }
            xCen = tileWidth / 2.0
            yCen += tileHeight
        }
    }
}
