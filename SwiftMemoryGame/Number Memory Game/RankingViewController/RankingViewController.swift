import UIKit
import FMDB

class RankingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    var resultQuery: FMResultSet!
    var isFiltered: Bool = false
    var filteredArray: Array<Player>!
    var data: Player!
    
    
    @IBOutlet weak var segmentedControll: UISegmentedControl!
}
