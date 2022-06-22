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
}
