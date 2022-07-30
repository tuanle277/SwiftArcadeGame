import UIKit

extension RankingViewController2
{
    func configTable()
    {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "RankingCell2", bundle: nil), forCellReuseIdentifier: RankingCell2.identifier)
        tableView.rowHeight = 100
        tableView.estimatedRowHeight = 100
        tableView.backgroundColor = UIColor.white
        tableView.separatorStyle = .singleLine
    }
}
