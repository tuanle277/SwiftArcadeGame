import UIKit

extension GameViewController3
{
    func configureGameUIs()
    {
        if !GameViewController3.gameLoaded
        {
            for i: UIView in self.choicesBackground.subviews
            {
                i.layer.borderWidth = 1.0
                i.layer.cornerRadius = 40.0
            }
            UIView.animate(withDuration: 0.5, delay: -1)
            {
                self.choicesBackground.center = CGPoint(x: self.choicesBackground.center.x, y: self.choicesBackground.center.y - 500)
                print(self.choicesBackground.alpha)
                self.choicesBackground.alpha += 0.8
            }
            GameViewController3.gameLoaded = true
        }
    }
}
