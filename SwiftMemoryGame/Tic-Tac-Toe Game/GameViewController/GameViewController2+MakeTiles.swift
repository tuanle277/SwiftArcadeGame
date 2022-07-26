import UIKit

extension GameViewController2
{
    func makeTiles () {
        // configure tiles' designs and their initial positions in the game view
        let tileWidth = gameView.frame.size.width / CGFloat (gameMode)
        let tileHeight = gameView.frame.size.height / CGFloat (gameMode)
        let tileCgSize = CGSize (width: tileWidth, height: tileHeight)
        var xCen = tileWidth / 2.0
        var yCen = tileHeight / 2.0
        var count = 0
        
        // placing them in the game view
        for i in 0..<gameMode
        {
            gameBeingPlayed.append([])
            for j in 0..<gameMode
            {
                game.append([i, j])
                let tile = UIView (frame: CGRect (origin: CGPoint.zero, size: tileCgSize))
                tilesArr.append(tile)
                choice = UILabel(frame: tile.bounds)
                choice.isUserInteractionEnabled = true
                choice.tag = count
                choice.text = ""
                count += 1
                tile.addSubview(choice)
                choice.font = UIFont.systemFont(ofSize: tile.frame.height)
                choice.textAlignment = .center
                let tileCen = CGPoint(x: xCen, y: yCen)
                tile.center = tileCen
                xCen += tileWidth
                tile.layer.borderWidth = 1.0
                tile.layer.borderColor = UIColor.black.cgColor
                gameBeingPlayed[i].append("")
                gameView.addSubview(tile)
            }
            xCen = tileWidth / 2.0
            yCen += tileHeight
        }
        gameView.isUserInteractionEnabled = true
    }
}
