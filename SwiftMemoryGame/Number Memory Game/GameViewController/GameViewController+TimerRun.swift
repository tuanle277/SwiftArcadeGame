import UIKit

extension GameViewController
{
    func runTimer ()
    {
        if (gameTimer != nil)
        {
            gameTimer.invalidate()
            timerLabel.text = "\(00)\' : \(01)\""
           
        }
        gameTimer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(timerFunction),
            userInfo: nil,
            repeats: true)
    }
}
