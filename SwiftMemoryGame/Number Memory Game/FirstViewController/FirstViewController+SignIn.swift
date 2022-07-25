//import UIKit
//
//extension FirstViewController
//{
//    @IBAction func signInAction(_ sender: UIButton) {
//        
//        let signInAlert: UIAlertController = UIAlertController.init(title: "Sign In", message: "", preferredStyle: UIAlertController.Style.alert);
//        
//        signInAlert.addTextField {(textField) in
//            textField.placeholder = "Username"
//        }
//    
//        signInAlert.addTextField {(textField) in
//            textField.placeholder = "Password"
//            textField.isSecureTextEntry = true
//        }
//        
//        FirstViewController.database.open()
//        do
//        {
//            queryResults = try FirstViewController.database.executeQuery("SELECT * FROM signInfo", values: nil)
//        }
//        catch
//        {
//            print("can't get info")
//            return
//        }
//        
//        signInAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//        
//        signInAlert.addAction(UIAlertAction(title: "Sign in", style: .default) {[self] _ in
//            signInAlert.actions[0].isEnabled = false
//            signInAlert.actions[1].isEnabled = false
//            if !(signInAlert.textFields![0].text == "") && !(signInAlert.textFields![1].text == "")
//            {
//                let username = signInAlert.textFields![0].text
//                let password = signInAlert.textFields![1].text
//
//                while queryResults.next()
//                {
//                    if queryResults.string(forColumn: "username") == username && queryResults.string(forColumn: "password") == password
//                    {
//                        signUpButton.titleLabel?.text = ""
//                        signInButton.titleLabel?.text = ""
////                        signInButton.isEnabled = false;
////                        signUpButton.isEnabled = false;
////                        nameLabel.text = "Welcome, " + username!
////                        
////                        nameLabel.adjustsFontSizeToFitWidth = true
////                        FirstViewController.database.close()
//                        return
//                    }
//                }
//                signInAlert.actions[0].isEnabled = false
//                let warning: UILabel = UILabel.init(frame: CGRect.init(x: signInAlert.view.frame.origin.x + 10, y: signInAlert.view.frame.origin.y + 10, width: 100, height: 30))
//                warning.text = "Wrong username or password"
//                warning.textColor = UIColor.red;
//                signInAlert.view?.addSubview(warning)
//            }
//            else
//            {
//                signInAlert.actions[0].isEnabled = false
//                signInAlert.actions[1].isEnabled = false
//            }
//        } )
//        
//        self.present(signInAlert, animated: true, completion: nil)
//    }
//    
//}
