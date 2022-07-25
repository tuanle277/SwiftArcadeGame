import UIKit

class GameCollectionCell: UICollectionViewCell {
    @IBOutlet weak var cellBackgroundView: UIView!
    @IBOutlet weak var titleLabel: UILabel!

    func setUp(game: Game)
    {
        titleLabel.text = game.title
        cellBackgroundView.backgroundColor = game.backgroundColor
        cellBackgroundView.layer.cornerRadius = 17.0
        cellBackgroundView.alpha = 0.8
    }

}
