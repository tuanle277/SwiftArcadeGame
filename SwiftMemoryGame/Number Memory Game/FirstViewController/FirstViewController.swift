import UIKit
import FMDB

class FirstViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    
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
    
    let gameModeArr: Array<String> = ["4x4", "6x6", "8x8"]
    let timesArr = (0..<61)
    static var chosenGameMode: Int = 4
    var chosenGameMod: Int = 4
    var gameModePicker:UIPickerView!
    static var database: FMDatabase!
    var queryResults: FMResultSet!
    static var datas: Array <Player> = []
    var isNotSignedIn: Bool!
    static var username: String!
    var sideMenuOpened: Bool = false
    
    @IBAction func backHomeAction(_ sender: UIButton) {
        dismiss(animated: true)
    }
    @IBOutlet weak var sideMenuView: SideMenuView!
    @IBOutlet weak var startGameButtonBackground: UIView!
    @IBOutlet weak var startGameButton: UIButton!
    @IBOutlet weak var chooseGameModeButtonBackground: UIView!
    @IBOutlet weak var chooseGameModeButton: UIButton!
    @IBOutlet weak var rankingButtonBackground: UIView!
    @IBOutlet weak var rankingButton: UIButton!

    @IBOutlet weak var titleLabelBackground: UIView!
    @IBOutlet weak var titleLabel: UILabel!
}
