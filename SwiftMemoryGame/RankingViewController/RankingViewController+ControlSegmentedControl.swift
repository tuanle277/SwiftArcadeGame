import UIKit
import FMDB

extension RankingViewController
{
    @IBAction func controlSegmentedControl(_ sender: UISegmentedControl)
    {
        isFiltered = true
        filteredArray = []
        let index = segmentedControll.selectedSegmentIndex
        FirstViewController.database.open()
        do
        {
            switch(index)
            {
            case 0:
                resultQuery = try FirstViewController.database.executeQuery("SELECT * FROM players where gamemode = '4x4'", values: nil)
            case 1:
                resultQuery = try FirstViewController.database.executeQuery("SELECT * FROM players where gamemode = '6x6'", values: nil)
            case 2:
                resultQuery = try FirstViewController.database.executeQuery("SELECT * FROM players where gamemode = '8x8'", values: nil)
            default:
                  return
            }
        }
        catch
        {
            print("Error changing ranking mode")
        }
        while resultQuery.next()
        {
            guard let name = resultQuery.string(forColumn: "name") else { return }
            let time = resultQuery.string(forColumn: "time")
            let gameMode = resultQuery.string(forColumn: "gamemode")
            filteredArray.append(Player(newName: name, newTime: time!, newGame: gameMode!))
        }
        FirstViewController.database.close()
        tableView.reloadData()
    }
}
