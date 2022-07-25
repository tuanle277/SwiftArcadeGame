import UIKit

extension RankingViewController
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if !isFiltered
        {
            return FirstViewController.datas.count
        }
        else
        {
            return filteredArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RankingCell.identifier, for: indexPath) as! RankingCell
        if !isFiltered
        {
            data = FirstViewController.datas[indexPath.row]
        }
        else
        {
            data = filteredArray[indexPath.row]
        }
        cell.setUp(player: data, indexPath: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let frame = cell.frame
        cell.frame = CGRect(x: 0, y: self.tableView.frame.height, width: frame.width, height: frame.height)
        UIView.animate(withDuration: 0.3, delay: 0.0, options: UIView.AnimationOptions.transitionCrossDissolve, animations: { () -> Void in
            cell.frame = frame
        }, completion: nil)
    }
}
