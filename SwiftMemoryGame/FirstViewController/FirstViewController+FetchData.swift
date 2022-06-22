import UIKit
import FMDB

extension FirstViewController
{
    func fetchData()
    {
        print("Fetching data...")

        do
        {
            queryResults = try FirstViewController.database.executeQuery("SELECT * FROM players", values: nil)
            print("query results got")
        }
        catch
        {
            print("error")
        }
        while queryResults.next()
        {
            let name: String = queryResults.string(forColumn: "name")!
            let time: String = queryResults.string(forColumn: "time")!
            let gameMode: String = queryResults.string(forColumn: "gamemode")!
            FirstViewController.datas.append(Player(newName: name, newTime: time, newGame: gameMode))
        }
    }
}
