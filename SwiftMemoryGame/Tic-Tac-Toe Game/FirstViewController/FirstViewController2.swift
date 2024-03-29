import UIKit

class FirstViewController2: UIViewController {
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
    @IBAction func backHomeAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleLabelBackground: UIView!
    @IBOutlet weak var startGameBackground: UIView!
    @IBOutlet weak var gameModeBackground: UIView!
    
    @IBAction func startGameAction(_ sender: UIButton)
    {
        performSegue(withIdentifier: "startGame", sender: nil)
    }
    @IBAction func gameModeAction(_ sender: UIButton)
    {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
