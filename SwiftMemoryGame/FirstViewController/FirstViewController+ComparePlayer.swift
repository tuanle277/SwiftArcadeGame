import Foundation

extension FirstViewController
{
    // compare times played
    static func isFaster (player1: Player, player2: Player) -> Bool
    {
        if player1.minutePlayed < player2.minutePlayed
        {
            return true
        }
        
        else if player1.minutePlayed > player2.minutePlayed
        {
            return false
        }
        
        else
        {
            if player1.secondPlayed <= player2.secondPlayed
            {
                return true
            }
            else
            {
                return false
            }
        }
    }
}
