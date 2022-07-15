import UIKit
import FMDB

extension FirstViewController
{
    func fetchData()
    {
        print("Fetching data...")
        FirstViewController.database.open()
        do
        {
            queryResults = try FirstViewController.database.executeQuery("SELECT * FROM players where gamemode = '4x4'", values: nil)
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
            let secondPlayed: Int = Int(queryResults.int(forColumn: "second"))
            let minutePlayed: Int = Int(queryResults.int(forColumn: "minute"))
            FirstViewController.datas.append(Player(newName: name, newTime: time, newGame: gameMode, newMinute: minutePlayed, newSecond: secondPlayed))
        }
        FirstViewController.database.close()
        sortDatas(low: 0, high: FirstViewController.datas.count - 1)

        for i in FirstViewController.datas
        {
            print(i.timeBeaten!)
        }
        
        FirstViewController.database.close()
    }
}
