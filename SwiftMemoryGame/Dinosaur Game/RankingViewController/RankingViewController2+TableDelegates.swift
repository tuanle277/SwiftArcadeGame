import UIKit

extension RankingViewController2
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FirstViewController4.datas.count
 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RankingCell2.identifier, for: indexPath) as! RankingCell2
        data = FirstViewController4.datas[indexPath.row]
        cell.setUp(player: data, indexPath: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let frame = cell.frame
        cell.frame = CGRect(x: 0, y: self.tableView.frame.height, width: frame.width, height: frame.height)
        UIView.animate(withDuration: 0.2, delay: 0.0, options: UIView.AnimationOptions.transitionCrossDissolve, animations: { () -> Void in
            cell.frame = frame
        }, completion: nil)
    }
}
