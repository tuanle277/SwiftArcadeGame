import UIKit
import FMDB

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var screenLoaded: Int = 0
    var queryResults: FMResultSet!
    var sideMenuOpened: Bool = false
    static var database: FMDatabase!
    static var profileName: String!
    var datas: Array<Game> = [Game.init(newTitle: "Dinosaur", newBackgroundColor: UIColor.blue), Game.init(newTitle: "Rock paper scissor", newBackgroundColor: UIColor.orange), Game.init(newTitle: "Number memory", newBackgroundColor: UIColor.purple), Game.init(newTitle: "Tic Tac Toe", newBackgroundColor: UIColor.red)]
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var sideMenuView: SideMenuView!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var gameCollectionView: UICollectionView!
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
