import UIKit
import FMDB

extension GameViewController
{
    func takeWinnerInfo() {
        if FirstViewController.username == nil
        {
            //configure alert
            let infoAlert = UIAlertController(title: "You Win!", message: "Enter your information", preferredStyle: UIAlertController.Style.alert)
            let height:NSLayoutConstraint = NSLayoutConstraint(item: infoAlert.view!, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 180)
                   infoAlert.view.addConstraint(height)
            
            //add text field
            infoAlert.addTextField{(textField) in
                textField.placeholder = "Name"
            }
            
            //Configure time finished and game mode finished
            GameViewController.minutePlayed = gameTime / 60
            GameViewController.secondPlayed = gameTime % 60
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
                let textFields = infoAlert?.textFields else { return }
                if let nameText = textFields[0].text{self.dismiss(animated: true);
                    FirstViewController.datas.append(Player(newName: nameText, newTime: "\(timeMin)\' : \(timeSecond)\"", newGame: gameModeWon, newMinute: GameViewController.minutePlayed, newSecond: GameViewController.secondPlayed));
                    FirstViewController.database.open();
                    do
                    {
                        try FirstViewController.database.executeUpdate("INSERT into players (name, time, gamemode, second, minute) VALUES (?, ?, ?, ?, ?)", values: [nameText, "\(timeMin)\' : \(timeSecond)\"", gameModeWon!, GameViewController.secondPlayed!, GameViewController.minutePlayed!])
                    }
                    catch
                    {
                        print("Cannot make new data")
                    };
                    FirstViewController.database.close()
    }})
            
            self.present(infoAlert, animated: true, completion: nil)
        }
        else
        {
            //Configure time finished and game mode finished
            GameViewController.minutePlayed = gameTime / 60
            GameViewController.secondPlayed = gameTime % 60
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
            
            FirstViewController.datas.append(Player(newName: FirstViewController.username, newTime: "\(timeMin)\' : \(timeSecond)\"", newGame: gameModeWon, newMinute: GameViewController.minutePlayed, newSecond: GameViewController.secondPlayed));
            FirstViewController.database.open();
            do
            {
                try FirstViewController.database.executeUpdate("INSERT into players (name, time, gamemode, second, minute) VALUES (?,  ?, ?, ?, ?)", values: [FirstViewController.username, "\(timeMin)\' : \(timeSecond)\"", gameModeWon!, GameViewController.secondPlayed!, GameViewController.minutePlayed!])
            }
            catch
            {
                print("Cannot make new data")
            }
            FirstViewController.database.close()
        }
        
    }

}
