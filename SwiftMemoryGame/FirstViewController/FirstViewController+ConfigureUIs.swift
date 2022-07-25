import UIKit

extension FirstViewController
{
    func configureUIs()
    {
        let colorTop =  UIColor(red: 30/255.0, green: 59.0/255.0, blue: 220.0/255.0, alpha: 0.1).cgColor
        let colorBottom = UIColor(red: 40.0/255.0, green: 30.0/255.0, blue: 223.0/255.0, alpha: 0.4).cgColor
                
        self.titleLabel.font = UIFont(name: "Times New Roman Bold", size: 36)!
        self.titleLabelBackground.layer.borderWidth = 1.5
        self.titleLabelBackground.layer.borderColor = UIColor.brown.cgColor
        self.shadowView.alpha = 0
        self.shadowView.isUserInteractionEnabled = true
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.startGameButtonBackground.bounds
        self.startGameButtonBackground.layer.insertSublayer(gradientLayer, at: 0)
        self.startGameButtonBackground.clipsToBounds = true

        let gradientLayer1 = CAGradientLayer()
        gradientLayer1.colors = [colorTop, colorBottom]
        gradientLayer1.locations = [0.0, 1.0]
        gradientLayer1.frame = self.chooseGameModeButtonBackground.bounds
        self.chooseGameModeButtonBackground.layer.insertSublayer(gradientLayer1, at: 0)
        self.chooseGameModeButtonBackground.clipsToBounds = true

        let gradientLayer2 = CAGradientLayer()
        gradientLayer2.colors = [colorTop, colorBottom, colorTop, colorBottom]
        gradientLayer2.locations = [0.0, 1.0]
        gradientLayer2.frame = self.rankingButtonBackground.bounds
        self.rankingButtonBackground.layer.insertSublayer(gradientLayer2, at: 0)
        self.rankingButtonBackground.clipsToBounds = true
        
        self.startGameButtonBackground.layer.cornerRadius = 30;
        self.rankingButtonBackground.layer.cornerRadius = 30;
        self.chooseGameModeButtonBackground.layer.cornerRadius = 30;
        
        self.startGameButtonBackground.center = CGPoint(x: self.startGameButtonBackground.center.x , y: self.view.frame.origin.y + self.view.frame.size.height + 30)
        self.chooseGameModeButtonBackground.center = CGPoint(x: self.chooseGameModeButtonBackground.center.x, y: self.view.frame.origin.y + self.view.frame.size.height + 110)
        self.rankingButtonBackground.center = CGPoint(x: self.rankingButtonBackground.center.x, y: self.view.frame.origin.y + self.view.frame.size.height + 190)
                
        UIView.animate(withDuration: 0.6, delay: 0)
        {
            self.startGameButtonBackground.center = CGPoint(x: self.startGameButtonBackground.center.x,y:  self.startGameButtonBackground.center.y - 400)
        }
        
        UIView.animate(withDuration: 1.2, delay: 0.3)
        {
            self.chooseGameModeButtonBackground.center = CGPoint(x: self.chooseGameModeButtonBackground.center.x,y:  self.chooseGameModeButtonBackground.center.y - 400)
        }
        
        UIView.animate(withDuration: 1.8, delay: 0.6)
        {
            self.rankingButtonBackground.center = CGPoint(x: self.chooseGameModeButtonBackground.center.x,y:  self.rankingButtonBackground.center.y - 400)
        }
    }
}
