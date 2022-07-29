import UIKit

class RankingCell2: UITableViewCell {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    func setUp (player: Player, indexPath: IndexPath)
    {
        nameLabel.text = player.name
        timeLabel.text = "Time played: \(player.dinTimeBeaten!) seconds"

    }
    static var identifier: String = "RankingCell2"
    
}
