import UIKit

extension SideMenuView
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return menu.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: SideMenuCell.identifier, for: indexPath) as! SideMenuCell
        cell.setUp(menu: menu[indexPath.row], indexPath: indexPath)
        cell.backgroundColor = UIColor.clear
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row
        {
        case 0:
            sideMenuDelegate.signIn()
        case 1:
            sideMenuDelegate.screenChosen(screen: "toSetting")
        default:
            break
        }
    }
    


}

