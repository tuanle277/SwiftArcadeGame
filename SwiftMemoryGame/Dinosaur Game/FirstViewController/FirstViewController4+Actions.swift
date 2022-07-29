import UIKit

extension FirstViewController4
{
    @IBAction func startGameAction(_ sender: UIButton)
    {
        performSegue(withIdentifier: "startGame", sender: nil)
    }
    
    @IBAction func toRankingAction(_ sender: UIButton)
    {
        performSegue(withIdentifier: "toRanking", sender: nil)
    }
    @IBAction func backHomeAction(_ sender: UIButton)
    {
        dismiss(animated: true)
    }
    func setGradientBackground()
    {
        let colorTop =  UIColor(red: 0/255.0, green: 60.0/255.0, blue: 255.0/255.0, alpha: 0.3).cgColor
        let colorBottom = UIColor(red: 40.0/255.0, green: 144.0/255.0, blue: 255.0/255.0, alpha: 0.5).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    
}
