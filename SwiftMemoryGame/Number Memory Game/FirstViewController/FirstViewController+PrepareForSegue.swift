import UIKit

extension FirstViewController
{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startGame"
        {
            let gameInstance: GameViewController = segue.destination as! GameViewController
            gameInstance.gameMode = chosenGameMod
        }
    }

}
