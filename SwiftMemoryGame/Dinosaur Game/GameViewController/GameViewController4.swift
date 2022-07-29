import UIKit

class GameViewController4: UIViewController {
    
    var gameTimer: Timer!
    var exist: Bool = false
    var obstacle: UIView = UIView.init()
    var gameTime: Double = 0.0
    var stillGame: Bool = false
    
    @IBOutlet weak var againButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var road: UIView!
    @IBOutlet weak var block: UIView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        runGame()
    }
    
    @IBAction func againAction(_ sender: Any)
    {
        print("get out")
        dismiss(animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if stillGame
        {
            UIView.animate(withDuration: 0.4, delay: 0, animations:
            {
                self.block.center = CGPoint(x: self.block.center.x, y: self.block.center.y - 180)
                self.view.isUserInteractionEnabled = false
            })
            
            { _ in
                UIView.animate(withDuration: 0.4, delay: 0, animations:
                {
                    self.block.center = CGPoint(x: self.block.center.x, y: self.block.center.y + 180)
                    self.view.isUserInteractionEnabled = true

                }
                )
            }
        }
    }
}
