import Foundation

extension FirstViewController
{
    // compare times played
    func isFaster (player1: Player, player2: Player) -> Bool
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
    
    /* This function takes last element as pivot, places the pivot element at its correct position in sorted FirstViewController.datas, and places all smaller (smaller than pivot) to left of pivot and all greater elements to right of pivot */
    
    func partition(low: Int, high: Int) -> Int
    {
        let pivot = FirstViewController.datas[high]
        var i = low - 1
        
        for j in low...high - 1
        {
            if isFaster(player1: FirstViewController.datas[j], player2: pivot)
            {
                i += 1
                // swap FirstViewController.datas[i] and FirstViewController.datas[j]
                let dummy = FirstViewController.datas[i]
                FirstViewController.datas[i] = FirstViewController.datas[j]
                FirstViewController.datas[j] = dummy
            }
        }
        
        // swap FirstViewController.datas[high] and FirstViewController.datas[i + 1]
        let d = FirstViewController.datas[i + 1]
        FirstViewController.datas[i + 1] = FirstViewController.datas[high]
        FirstViewController.datas[high] = d
        
        return (i + 1)
    }
    
    // sort FirstViewController.datas of datas(Player)
    func sort (low: Int, high: Int)
    {
        if low < high
        {
            let pi = partition(low: low, high: high)
            sort(low: low, high: pi - 1)
            sort(low: pi + 1, high: high)
        }
        
    }
}

