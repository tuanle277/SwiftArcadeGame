import Foundation
import UIKit

extension GameViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
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
        makeTiles()

    }
}

