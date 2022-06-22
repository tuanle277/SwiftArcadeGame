import UIKit

extension GameViewController
{
    @objc func timerFunction()
    {
        // redraw the timer every second
        gameTime += 1
        
        let timeMin = String(format: "%02d", gameTime / 60)
        let timeSecond = String(format: "%02d", gameTime % 60)
        
        timerLabel.textAlignment = NSTextAlignment.center
        timerLabel.textColor = UIColor.red
        timerLabel.font = UIFont.systemFont(ofSize: 40)
        timerLabel.text = ("\(timeMin)\' : \(timeSecond)\"")
    }

}
