import UIKit

extension FirstViewController
{
    @IBAction func chooseGameMode(_ sender: UIButton)
    {
        //create picker View
        gameModePicker = UIPickerView(frame: CGRect(x: 5, y: 10, width: 250, height: 150))
        gameModePicker.dataSource = self
        gameModePicker.delegate = self
        
        //create and customize alert
        let gameModeAlert = UIAlertController(title: "Game Mode", message: "", preferredStyle: UIAlertController.Style.alert)
        gameModeAlert.view.addSubview(gameModePicker)
        let height:NSLayoutConstraint = NSLayoutConstraint(item: gameModeAlert.view!, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 200)
               gameModeAlert.view.addConstraint(height)
        
        //add actions to alert
        gameModeAlert.addAction(UIAlertAction(title: "Continue", style: UIAlertAction.Style.default, handler: gameModeChosen))
        gameModeAlert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        
        chosenGameMode = 4
        self.present(gameModeAlert, animated: true, completion: nil)
        
        
        
    }
}
