import UIKit

class RankingCell2: UITableViewCell {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    func setUp (player: Player, indexPath: IndexPath)
    {
        nameLabel.text = player.name
        timeLabel.text = "score: \(String(Int(floor(Double(player.dinIntTimeBeaten) / 10))))"

    }
    static var identifier: String = "RankingCell2"
    
}
