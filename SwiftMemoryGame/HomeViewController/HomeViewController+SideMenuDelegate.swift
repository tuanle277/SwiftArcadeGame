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
    
    func signIn()
    {
        let signInAlert: UIAlertController = UIAlertController.init(title: "Sign In", message: "", preferredStyle: UIAlertController.Style.alert)
    
            signInAlert.addTextField {(textField) in
                textField.placeholder = "Username"
            }
        
        self.present(signInAlert, animated: true)
        
        self.shadowView.center = CGPoint(x: self.view.center.x - self.sideMenuView.frame.size.width, y: self.view.center.y)
        self.shadowView.alpha = 0
        UIView.animate(withDuration: 0.4, delay: 0)
        {
            self.sideMenuView.center = CGPoint(x: self.sideMenuView.center.x - self.sideMenuView.frame.width, y: self.sideMenuView.center.y)
            self.sideMenuView.sideMenuDelegate = self
        }
        sideMenuOpened = false
        
        signInAlert.addAction(UIAlertAction(title: "OK", style: .default) {[self] _ in
                   signInAlert.actions[0].isEnabled = false
                   if !(signInAlert.textFields![0].text == "")
                   {
                       let username = signInAlert.textFields![0].text
                       HomeViewController.profileName = username
                       self.welcomeLabel.text = "Welcome \(username!)"
                   }
            }
        )
    }
}
