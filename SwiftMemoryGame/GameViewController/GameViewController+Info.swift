import UIKit
import FMDB

extension GameViewController
{
    func takeWinnerInfo() {
        //configure alert
        let infoAlert = UIAlertController(title: "You Win!", message: "Enter your information", preferredStyle: UIAlertController.Style.alert)
        let height:NSLayoutConstraint = NSLayoutConstraint(item: infoAlert.view!, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 180)
               infoAlert.view.addConstraint(height)
        
        //add text field
        infoAlert.addTextField{(textField) in
            textField.placeholder = "Name"
        }
        
        //Configure time finished and game mode finished
        let timeMin = String(format: "%02d", gameTime / 60)
        let timeSecond = String(format: "%2d", gameTime % 60)
        var gameModeWon: String!
        switch gameMode{
            case 4:
                gameModeWon = "4x4"
            case 6:
                gameModeWon = "6x6"
            case 8:
                gameModeWon = "8x8"
            default:
                break
        }
        
        //add actions to alert
        infoAlert.addAction(UIAlertAction(title: "Continue", style: .default)
                            {
            [weak infoAlert] _ in guard
            let textFields = infoAlert?.textFields
                 else
                                { return }
            if let nameText = textFields[0].text{self.dismiss(animated: true);
                FirstViewController.datas.append(Player(newName: nameText, newTime: "\(timeMin)\' : \(timeSecond)\"", newGame: gameModeWon));
                FirstViewController.database.open();
                do
                {
                    try FirstViewController.database.executeUpdate("INSERT into players (name, time, gamemode) VALUES (?, ?, ?)", values: [nameText, "\(timeMin)\' : \(timeSecond)\"", gameModeWon ?? NSNull()])
                }
                catch
                {
                    print("Cannot make new data")
                };
                FirstViewController.database.close()
}})
        print("number of data in datas is \(FirstViewController.datas.count)")
        
        self.present(infoAlert, animated: true, completion: nil)
    }

}
