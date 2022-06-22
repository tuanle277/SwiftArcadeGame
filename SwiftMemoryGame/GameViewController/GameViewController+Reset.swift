import UIKit

extension GameViewController
{
    @IBAction func reset(_ sender: UIButton) {
        
        // loop then remove each
        for any in tilesArr
        {
            any.removeFromSuperview()
        }
        if (gameTimer != nil)
        {
            gameTimer.invalidate()
            timerLabel.text = "00\' : 00\""
           
        }
        gameTimer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(timerFunction),
            userInfo: nil,
            repeats: true
            )
        gameMode = 4
        gameTime = 0
        makeTiles()
        
        // right now, if you reset, then it would be like playing a new game without changing the game mode
    }
}
