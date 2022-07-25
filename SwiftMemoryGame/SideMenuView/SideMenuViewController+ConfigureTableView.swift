import UIKit

extension SideMenuView
{
    func configureTableView() {
        menuTableView.delegate = self
        menuTableView.dataSource = self
        menuTableView.separatorStyle = .none
        menuTableView.rowHeight = 80
        menuTableView.estimatedRowHeight = 80
        self.menuTableView.register(UINib(nibName: SideMenuCell.identifier, bundle: nil), forCellReuseIdentifier: SideMenuCell.identifier)
        self.menuTableView.reloadData()
        self.menuTableView.backgroundColor = UIColor.clear
    }
}
