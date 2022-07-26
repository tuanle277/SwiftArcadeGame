import UIKit

extension HomeViewController
{
    func setGradientBackground()
    {
        let colorTop =  UIColor(red: 3.0/255.0, green: 201.0/255.0, blue: 223.0/255.0, alpha: 1).cgColor
        let colorBottom = UIColor(red: 3.0/255.0, green: 223.0/255.0, blue: 157.0/255.0, alpha: 0.6).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.2, 0.7]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    
    func configureUIs ()
    {

        self.titleLabel.adjustsFontSizeToFitWidth = true
        setGradientBackground()
        self.shadowView.alpha = 0.0
//        self.titleLabelBackground.layer.cornerRadius = 30
//        self.titleLabelBackground.layer.opacity = 0.7
    }
}
