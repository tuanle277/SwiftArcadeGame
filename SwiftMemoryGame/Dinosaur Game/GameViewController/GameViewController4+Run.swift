import UIKit

extension GameViewController4
{
    func runGame()
    {
        self.view.isUserInteractionEnabled = true
        self.stillGame = true
        self.block.layer.cornerRadius = self.block.frame.width / 2
        gameTimer = Timer.scheduledTimer(
            timeInterval: 0.0025,
            target: self,
            selector: #selector(runRoad),
            userInfo: nil,
            repeats: true)
    }
    
    @objc func runRoad()
    {
        self.scoreLabel.text = "\(Int(gameTime / 10))"
        gameTime += 0.1
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
                self.resultLabel.textColor = UIColor.red
                gameTimer.invalidate()
                self.stillGame = false
            }
        }
    }
}
