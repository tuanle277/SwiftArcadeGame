import Foundation

extension RankingViewController
{

        /* This function takes last element as pivot, places the pivot element at its correct position in sorted filteredArray, and places all smaller (smaller than pivot) to left of pivot and all greater elements to right of pivot */
        
        func partitionFilter(low: Int, high: Int) -> Int
        {
            let pivot = filteredArray[high]
            var i = low - 1
            
            for j in low...high - 1
            {
                if FirstViewController.isFaster(player1: filteredArray[j], player2: pivot)
                {
                    i += 1
                    // swap filteredArray[i] and filteredArray[j]
                    let dummy = filteredArray[i]
                    filteredArray[i] = filteredArray[j]
                    filteredArray[j] = dummy
                }
            }
            
            // swap filteredArray[high] and filteredArray[i + 1]
            let d = filteredArray[i + 1]
            filteredArray[i + 1] = filteredArray[high]
            filteredArray[high] = d
            
            return (i + 1)
        }
        
        // sort filteredArray of datas(Player)
        func sortFilters (low: Int, high: Int)
        {
            if low < high
            {
                let pi = partitionFilter(low: low, high: high)
                sortFilters(low: low, high: pi - 1)
                sortFilters(low: pi + 1, high: high)
            }
            
        }
    }
