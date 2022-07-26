import UIKit

extension GameViewController3
{
    func winner() -> String
    {
        let botschoice = Int.random(in: 0...2)
        self.botResult.text = "Bot chooses \(choices[botschoice])"
        self.choicesBackground.isUserInteractionEnabled = false
        if self.playerChoice == self.choices[botschoice]
        {
            self.currentPlayerLabel.textColor = UIColor.red
            return "Draw"
        }
        
        else if (playerChoice == "Rock" && self.choices[botschoice] == "Scissor") || (playerChoice == "Paper" && self.choices[botschoice] == "Rock") || (playerChoice == "Scissor" && self.choices[botschoice] == "Paper")
        {
            playersScore += 1
            self.playerScore.text = String(playersScore)
            self.currentPlayerLabel.textColor = UIColor.red
            return "Player 1 wins"
        }
        else
        {
            botsScore += 1
            self.botScore.text = String(botsScore)
            self.currentPlayerLabel.textColor = UIColor.red
            return "Bot wins"
        }
    }
}
