import UIKit

extension FirstViewController
{
    @IBAction func toRanking(_ sender: UIButton)
    {
        performSegue(withIdentifier: "toRanking", sender: nil)
    }
}
