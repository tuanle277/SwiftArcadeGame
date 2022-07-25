import UIKit

extension HomeViewController
{
    func setGradientBackground()
    {
        let colorTop =  UIColor(red: 40.0/255.0, green: 60.0/255.0, blue: 255.0/255.0, alpha: 0.4).cgColor
        let colorBottom = UIColor(red: 10.0/255.0, green: 10.0/255.0, blue: 100.0/255.0, alpha: 0.6).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorBottom, colorTop, colorBottom]
        gradientLayer.locations = [0.0, 0.2, 0.6]
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
