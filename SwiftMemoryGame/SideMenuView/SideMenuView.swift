import UIKit

protocol SideMenuViewDelegate
{
    func screenChosen(screen: String)
    func signIn()
}

class SideMenuView: UIView, UITableViewDelegate, UITableViewDataSource
{
    var sideMenuDelegate: SideMenuViewDelegate!
    
    @IBOutlet weak var menuTableView: UITableView!
    @IBOutlet var sideMenuView: SideMenuView!
    @IBOutlet weak var titleLabel: UILabel!
    var menu: [SideMenuModel] =
    [
//        SideMenuModel.init(newTitle: "Games", newImage: UIImage.init(systemName: "gamecontroller.fill")!),
        SideMenuModel.init(newTitle: "Profile", newImage: UIImage.init(systemName: "person.fill")!),
        SideMenuModel.init(newTitle: "Setting", newImage: UIImage.init(systemName: "house.fill")!)
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
        titleLabel.text = "made by Kevin"
        titleLabel.textColor = UIColor.black
        titleLabel.layer.borderColor = UIColor.black.cgColor
        sideMenuView.frame = self.bounds
        configureTableView()
        sideMenuView.backgroundColor = UIColor.clear
    }
}


