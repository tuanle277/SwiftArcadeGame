import UIKit

class SideMenuCell: UITableViewCell {
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setUp (menu: SideMenuModel, indexPath: IndexPath)
    {
        self.icon.image = menu.icon;
        self.title.text = menu.title;
    }
    
    static var identifier: String = "SideMenuCell"
}
