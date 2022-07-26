import UIKit

extension GameViewController2
{
    func checkWin(winner: String)
    {
        if rowCrossed() || colCrossed() || diagCrossed()
        {
            gameView.isUserInteractionEnabled = false
            self.currentPlayerLabel.textColor = UIColor.red
            if winner == "0"
            {
                player1sScore += 1
                player1Score.text = String(player1sScore)
                self.currentPlayerLabel.text = "Player 1 wins!"
            }
            
            else
            {
                player2sScore += 1
                player2Score.text = String(player2sScore)
                self.currentPlayerLabel.text = "Player 2 wins!"
            }
        }
    }
    
    func rowCrossed() -> Bool
    {
        for i in 0...gameBeingPlayed.count - 1
        {
            if gameBeingPlayed[i][0] != "" && gameBeingPlayed[i][0] == gameBeingPlayed[i][1] && gameBeingPlayed[i][1] == gameBeingPlayed[i][2]
            {
                return true
            }
        }
        return false
    }
    
    func colCrossed() -> Bool
    {
        for i in 0...gameBeingPlayed[0].count - 1
        {
            if gameBeingPlayed[0][i] != "" && gameBeingPlayed[0][i] == gameBeingPlayed[1][i] && gameBeingPlayed[1][i] == gameBeingPlayed[2][i]
            {
                return true
            }
        }
        return false
    }
    
    func diagCrossed() -> Bool
    {
        if gameBeingPlayed[0][0] != "" && gameBeingPlayed[0][0] == gameBeingPlayed[1][1] && gameBeingPlayed[1][1] == gameBeingPlayed[2][2]
            {
                return true
            }
        
        if gameBeingPlayed[0][2] != "" && gameBeingPlayed[0][2] == gameBeingPlayed[1][1] && gameBeingPlayed[1][1] == gameBeingPlayed[2][0]
            {
                return true
            }
        return false
    }
    
//    func checkWin(index: Int) -> Bool
//    {
//        let cellIndex = game[index]
//        let check = gameBeingPlayed[cellIndex[0]][cellIndex[1]]
//        if (cellIndex[0] > 0 && cellIndex[0] < gameBeingPlayed.count) || (cellIndex[1] > 0 && cellIndex[1] < gameBeingPlayed.count)
//        {
//            var curRow = cellIndex[0]
//            while curRow > 0
//            {
//                if gameBeingPlayed[curRow][cellIndex[1]] != check
//                {
//                    return false
//                }
//                curRow -= 1
//            }
//
//            curRow = cellIndex[0]
//
//            while curRow < gameBeingPlayed.count
//            {
//                if gameBeingPlayed[curRow][cellIndex[1]] != check
//                {
//                    return false
//                }
//                curRow += 1
//            }
//
//            curRow = cellIndex[0]
//            curCol = cellIndex[
//
//            while curRow < game.count
//            {
//
//            }
//        }
//    }
}
