import UIKit
import FMDB

class FirstViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let gameModeArr: Array<String> = ["4x4", "6x6", "8x8"]
    let timesArr = (0..<61)
    static var chosenGameMode: Int = 4
    var chosenGameMod: Int = 4
    var gameModePicker:UIPickerView!
    static var database: FMDatabase!
    var queryResults: FMResultSet!
    static var datas: Array <Player> = []

    @IBOutlet weak var chooseGameModeButton: UIButton!
    
    @IBOutlet weak var countDownButton: UIButton!

    

}
