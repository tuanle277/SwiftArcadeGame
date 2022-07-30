import UIKit

extension RankingViewController
{
    
    func configTable()
    {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "RankingCell", bundle: nil), forCellReuseIdentifier: RankingCell.identifier)
        tableView.rowHeight = 130
        tableView.estimatedRowHeight = 130
        tableView.backgroundColor = .white
        tableView.separatorStyle = .singleLine
    }
}
