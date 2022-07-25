import UIKit

extension HomeViewController: SideMenuViewDelegate
{
    func screenChosen(screen: String)
    {
        self.shadowView.center = CGPoint(x: self.view.center.x - self.sideMenuView.frame.size.width, y: self.view.center.y)
        self.shadowView.alpha = 0
        UIView.animate(withDuration: 0.4, delay: 0)
        {
            self.sideMenuView.center = CGPoint(x: self.sideMenuView.center.x - self.sideMenuView.frame.width, y: self.sideMenuView.center.y)
            self.sideMenuView.sideMenuDelegate = self
//                self.view.center = CGPoint(x: self.view.center.x + self.sideMenuView.frame.size.width, y: self.view.center.y)
        }
        sideMenuOpened = false
        performSegue(withIdentifier: screen, sender: nil)
    }
}
