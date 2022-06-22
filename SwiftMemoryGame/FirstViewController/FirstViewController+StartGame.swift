import UIKit

extension FirstViewController
{
    @IBAction func startGameButton(_ sender: UIButton)
    {
        performSegue(withIdentifier: "startGame", sender: self)
    }
    
}
