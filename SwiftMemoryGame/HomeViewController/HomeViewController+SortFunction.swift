import UIKit

extension HomeViewController
{
    func partitionData(low: Int, high: Int) -> Int
    {
        let pivot = FirstViewController.datas[high]
        var i = low - 1
        
        for j in low...high - 1
        {
            if FirstViewController.isFaster(player1: FirstViewController.datas[j], player2: pivot)
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
    func sortDatas(low: Int, high: Int)
    {
        if low < high
        {
            let pi = partitionData(low: low, high: high)
            sortDatas(low: low, high: pi - 1)
            sortDatas(low: pi + 1, high: high)
        }
        
    }
}
