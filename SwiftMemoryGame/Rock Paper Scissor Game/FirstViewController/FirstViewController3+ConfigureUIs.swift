import UIKit

extension FirstViewController3
{
    func configureUIs()
    {
        let colorTop =  UIColor(red: 30/255.0, green: 59.0/255.0, blue: 220.0/255.0, alpha: 0.1).cgColor
        let colorBottom = UIColor(red: 40.0/255.0, green: 30.0/255.0, blue: 223.0/255.0, alpha: 0.4).cgColor
                
        self.titleLabel.font = UIFont(name: "Times New Roman Bold", size: 36)!
        self.titleLabel.adjustsFontSizeToFitWidth = true
        self.titleLabelBackground.layer.borderWidth = 1.5
        self.titleLabelBackground.layer.borderColor = UIColor.brown.cgColor
//        self.shadowView.alpha = 0
//        self.shadowView.isUserInteractionEnabled = true
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.startGameBackground.bounds
        self.startGameBackground.layer.insertSublayer(gradientLayer, at: 0)
        self.startGameBackground.clipsToBounds = true

        self.startGameBackground.layer.cornerRadius = 30;
        
        self.startGameBackground.center = CGPoint(x: self.startGameBackground.center.x , y: self.view.frame.origin.y + self.view.frame.size.height + 30)
                
        UIView.animate(withDuration: 0.6, delay: 0)
        {
            self.startGameBackground.center = CGPoint(x: self.startGameBackground.center.x,y:  self.startGameBackground.center.y - 400)
        }
    }
}
