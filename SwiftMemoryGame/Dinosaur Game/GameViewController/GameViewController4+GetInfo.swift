import UIKit

extension GameViewController4
{
    func getInfo()
    {
            if HomeViewController.profileName == nil
            {
                //configure alert
                let infoAlert = UIAlertController(title: "", message: "Enter your information", preferredStyle: UIAlertController.Style.alert)
                let height:NSLayoutConstraint = NSLayoutConstraint(item: infoAlert.view!, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 180)
                       infoAlert.view.addConstraint(height)
                
                //add text field
                infoAlert.addTextField{(textField) in
                    textField.placeholder = "Name"
                }
                                
                //add actions to alert
                infoAlert.addAction(UIAlertAction(title: "Continue", style: .default)
                                    {
                    [self, weak infoAlert] _ in guard
                    let textFields = infoAlert?.textFields else { return }
                    if let nameText = textFields[0].text{self.dismiss(animated: true);
                        FirstViewController4.datas.append(Player(newName: nameText, newTime: String(gameTime), newIntTime: Int(gameTime)));
                        HomeViewController.database.open();
                        do
                        {
                            try HomeViewController.database.executeUpdate("INSERT into dinPlayers (name, time, intTime) VALUES (?, ?, ?)", values: [nameText, self.gameTime, Int(gameTime)])
                        }
                        catch
                        {
                            print("Cannot make new data")
                        };
                        HomeViewController.database.close()
        }})
                
                self.present(infoAlert, animated: true, completion: nil)
            }
            else
            {
                //Configure time finished and game mode finished
                
                FirstViewController4.datas.append(Player(newName: HomeViewController.profileName, newTime: String(gameTime), newIntTime: Int(gameTime)));
                HomeViewController.database.open();
                do
                {
                    try HomeViewController.database.executeUpdate("INSERT into dinPlayers (name, time, intTime) VALUES (?, ?, ?)", values: [HomeViewController.profileName!, String(gameTime), Int(gameTime)])
                }
                catch
                {
                    print("Cannot make new data")
                };
                HomeViewController.database.close()
                dismiss(animated: true)
            }
    }
}
