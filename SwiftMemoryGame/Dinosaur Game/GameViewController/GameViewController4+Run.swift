import UIKit

extension GameViewController4
{
    @objc func runGame()
    {
        self.view.isUserInteractionEnabled = true
        self.stillGame = true
        gameTimer = Timer.scheduledTimer(
            timeInterval: self.gameSpeed,
            target: self,
            selector: #selector(runRoad),
            userInfo: nil,
            repeats: true)
    }

    @objc func runRoad()
    {
        self.scoreLabel.text = "\(Int(gameTime / 10))"
        if self.gameSpeed > 0.0018
        {
            gameTimer.invalidate()
            self.gameSpeed -= 0.000001
            runGame()
        }
        
        if Int(gameTime / 10) >= 200 && Int(gameTime / 10) < 600
        {
            if self.gameSpeed > 0.0015
            {
                gameTimer.invalidate()
                self.gameSpeed -= 0.000001
                incrementAmount = 0.2
                runGame()
            }
        }
        
        if Int(gameTime / 10) == 600 && Int(gameTime / 10) < 1000
        {
            if self.gameSpeed > 0.001
            {
                gameTimer.invalidate()
                self.gameSpeed -= 0.000001
                incrementAmount = 0.3
                runGame()
            }
        }
        
        if Int(gameTime / 10) >= 1000 && Int(-self.road.frame.origin.x) % Int(self.view.frame.width + 50 + self.block.frame.width) == 0
        {
            if self.gameSpeed > 0.0005
            {
                gameTimer.invalidate()
                self.gameSpeed -= 0.000001
                incrementAmount = 0.4
                runGame()
            }
        }
        
        gameTime += incrementAmount
        UIView.animate(withDuration: 0, delay: 0)
        { [self] in
            if Int(-self.road.frame.origin.x) % Int(self.view.frame.width + 50 + self.block.frame.width) == 0
            {
                let height: Int = Int.random(in: 70..<120)
                let distance: Int = Int.random(in: 30..<60)
                obstacle.frame = CGRect(x: self.view.bounds.width + CGFloat(distance), y: self.road.frame.origin.y - CGFloat(height), width: self.block.frame.width, height: CGFloat(height))
                obstacle.backgroundColor = UIColor.black
                self.view.addSubview(obstacle)
                exist = true
            }
            self.road.center = CGPoint(x: self.road.center.x - 1, y: self.road.center.y)
            self.road.frame = CGRect(x: self.road.frame.origin.x, y: self.road.frame.origin.y, width: self.road.frame.width + 1, height: self.road.frame.height)
            self.obstacle.center = CGPoint(x: self.obstacle.center.x - 1, y: self.obstacle.center.y)
            if (self.block.frame.origin.x +  self.block.frame.width <= self.obstacle.frame.origin.x + self.obstacle.frame.width) && (self.block.frame.origin.x +  self.block.frame.width > self.obstacle.frame.origin.x) && (self.block.frame.origin.y + self.block.frame.height > self.obstacle.frame.origin.y) && (self.block.frame.origin.y + self.block.frame.height <= self.obstacle.frame.origin.y + self.obstacle.frame.height)
            {
                self.resultLabel.text = "Game over"
                self.block.layer.removeAllAnimations()
                print(gameTime)
                self.resultLabel.textColor = UIColor.red
                gameTimer.invalidate()
                getInfo()
            }
        }
    }
}
