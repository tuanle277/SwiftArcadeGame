import UIKit

extension FirstViewController
{
    @IBAction func signUpAction(_ sender: UIButton) {
        let signUpAlert: UIAlertController = UIAlertController.init(title: "Sign Up", message: "", preferredStyle: UIAlertController.Style.alert)
        
        signUpAlert.addTextField {(textField) in
            textField.placeholder = "Username"
        }
    
        signUpAlert.addTextField {(textField) in
            textField.placeholder = "Password"
            textField.isSecureTextEntry = true;
        }
        
        FirstViewController.database.open()
        do
        {
            self.queryResults = try FirstViewController.database.executeQuery("SELECT username FROM signInfo", values: nil)
        }
        catch
        {
            print("cannot fetch data")
            return
        }
        
        
        signUpAlert.addAction(UIAlertAction(title: "Sign up", style: .default) {[self] _ in
            let fields = signUpAlert.textFields
            if !(signUpAlert.textFields![0].text == "") && !(signUpAlert.textFields![1].text == "")
            {
                let username = fields![0].text
                let password = fields![1].text

                while self.queryResults.next()
                {
                    if queryResults.string(forColumn: "username") == username
                    {
                        let warning: UILabel = UILabel.init(frame: CGRect.init(x: signUpAlert.view.frame.origin.x + 10, y: signUpAlert.view.frame.origin.y + 10, width: 100, height: 30))
                        warning.text = "Account signed up, please sign in"
                        warning.textColor = UIColor.red;
                        signUpAlert.view?.addSubview(warning)
                    }
                    isNotSignedIn = false;
                    break
                }
                isNotSignedIn = true;
                
                if isNotSignedIn
                {
                    do
                    {
                        try FirstViewController.database.executeUpdate("INSERT into signInfo (username, password) VALUES (?, ?)", values: [username, password])
                        signUpButton.titleLabel?.text = ""
                        signInButton.titleLabel?.text = ""
//                        signInButton.isEnabled = false
//                        signUpButton.isEnabled = false
                        nameLabel.text = "Welcome, " + username!
                        nameLabel.adjustsFontSizeToFitWidth = true
                    }
                    catch
                    {
                        print("insertion failed")
                    }
                }
                
                FirstViewController.database.close()
            }
        }
)
        self.present(signUpAlert, animated: true, completion: nil)
    }
}
