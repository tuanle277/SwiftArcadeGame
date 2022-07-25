import UIKit

class SideMenuView: UIView, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var menuTableView: UITableView!
    @IBOutlet var sideMenuView: SideMenuView!
    @IBOutlet weak var titleLabel: UILabel!
    var menu: [SideMenuModel] =
    [
        SideMenuModel.init(newTitle: "Home", newImage: UIImage.init(systemName: "house.fill")!),
        SideMenuModel.init(newTitle: "Profile", newImage: UIImage.init(systemName: "person.fill")!),
        SideMenuModel.init(newTitle: "Ranking", newImage: UIImage.init(systemName: "person.3.fill")!)
    ]
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aCoder: NSCoder)
    {
        super.init(coder: aCoder)
        commonInit()
    }
    
    private func commonInit()
    {
        Bundle.main.loadNibNamed("SideMenuView", owner: self, options: nil)
        addSubview(sideMenuView)
        sideMenuView.isUserInteractionEnabled = true
        titleLabel.text = "Kevin"
        titleLabel.textColor = UIColor.black
        titleLabel.layer.borderWidth = 1.5
        titleLabel.layer.borderColor = UIColor.black.cgColor
        sideMenuView.frame = self.bounds
        configureTableView()
        sideMenuView.backgroundColor = UIColor.clear
    }
}


