import UIKit

class RankingCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var rankLabel: UILabel!
    
    
    func setUp (player: Player, indexPath: IndexPath)
    {
        nameLabel.text = player.name
        timeLabel.text = "Time played: \(player.timeBeaten!)"
        gameLabel.text = "Game Mode beaten: \(player.gameModePlayed!)"
        rankLabel.text = String(indexPath.row + 1)

    }
    static var identifier: String = "RankingCell"
}
