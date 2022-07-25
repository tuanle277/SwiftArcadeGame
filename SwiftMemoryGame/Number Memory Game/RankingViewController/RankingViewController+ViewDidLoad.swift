import UIKit

extension RankingViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        configTable()
        FirstViewController.database.close()
        
    }
}
