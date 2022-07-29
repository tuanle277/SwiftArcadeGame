import UIKit

class FirstViewController3: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleLabelBackground: UIView!
    @IBOutlet weak var gameModeBackground: UIView!
    @IBOutlet weak var startGameBackground: UIView!
    
    
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
    
    @IBAction func startGameAction(_ sender: UIButton) {
        performSegue(withIdentifier: "startGame", sender: nil)
    }
    @IBAction func backButtonAction(_ sender: UIButton) {
        dismiss(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        GameViewController3.gameLoaded = false
        configureUIs()
        setGradientBackground()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
