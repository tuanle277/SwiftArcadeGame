import UIKit

extension FirstViewController
{
    func gameModeChosen(alert: UIAlertAction!)
    {
        switch FirstViewController.chosenGameMode
        {
        case 4:
            chooseGameModeButton.titleLabel?.text = "4x4"
        case 6:
            chooseGameModeButton.titleLabel?.text = "6x6"
        case 8:
            chooseGameModeButton.titleLabel?.text = "8x8"
        default:
            break
        }
        chooseGameModeButton.titleLabel?.textAlignment = NSTextAlignment.center
        chooseGameModeButton.titleLabel?.font = .systemFont(ofSize: 36)
        chosenGameMod = FirstViewController.chosenGameMode
    }
}
