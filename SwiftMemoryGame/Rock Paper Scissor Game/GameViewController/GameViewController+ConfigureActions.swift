import UIKit

extension GameViewController3
{
    func configureActions()
    {
        let tapRock = UITapGestureRecognizer(target: self, action: #selector(chooseRock))
        self.rockView.addGestureRecognizer(tapRock)
        
        let tapPaper = UITapGestureRecognizer(target: self, action: #selector(choosePaper))
        self.paperView.addGestureRecognizer(tapPaper)
        
        let tapScissor = UITapGestureRecognizer(target: self, action: #selector(chooseScissor))
        self.scissorView.addGestureRecognizer(tapScissor)
    }
    
    @objc func chooseRock()
    {
        UIView.animate(withDuration: 1, animations: { () -> Void in
                self.rockView.alpha = 0.0
            })
            UIView.animate(withDuration: 0.4, animations: { () -> Void in
                self.rockView.alpha = 1.0
               })
        self.playerChoice = "Rock"
        self.playerResult.text = "Player picked Rock"
        self.currentPlayerLabel.text = winner()
    }
    
    @objc func choosePaper()
    {
        UIView.animate(withDuration: 1, animations: { () -> Void in
            self.paperView.alpha = 0.0
           })
        UIView.animate(withDuration: 0.4, animations: { () -> Void in
            self.paperView.alpha = 1.0
           })
        self.playerChoice = "Paper"
        self.playerResult.text = "Player picked Paper"
        self.currentPlayerLabel.text = winner()
    }
    
    @objc func chooseScissor()
    {
        UIView.animate(withDuration: 1, animations: { () -> Void in
            self.scissorView.alpha = 0.0
           })
        UIView.animate(withDuration: 0.4, animations: { () -> Void in
            self.scissorView.alpha = 1.0
           })
        self.playerChoice = "Scissor"
        self.playerResult.text = "Player picked Scissor"
        self.currentPlayerLabel.text = winner()
    }
    
    
}
