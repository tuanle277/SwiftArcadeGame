import UIKit
import FMDB

extension HomeViewController
{
    func fetchDataNum()
    {
        print("Fetching data......")
        FirstViewController.database.open()
        do
        {
            queryResults = try FirstViewController.database.executeQuery("SELECT * FROM players where gamemode = '4x4'", values: nil)
            print("query results got 1")
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
            print(name)
            FirstViewController.datas.append(Player(newName: name, newTime: time, newGame: gameMode, newMinute: minutePlayed, newSecond: secondPlayed))
        }
        print(FirstViewController.datas)
        FirstViewController.database.close()
        sortDatas(low: 0, high: FirstViewController.datas.count - 1)
        FirstViewController.database.close()
    }
    
    func fetchDataDin()
    {
        print("Fetching data......")
        FirstViewController.database.open()
        do
        {
            queryResults = try FirstViewController.database.executeQuery("SELECT * FROM dinPlayers", values: nil)
            print("query results got 2")
        }
        catch
        {
            print("error")
        }
        while queryResults.next()
        {
            let name: String = queryResults.string(forColumn: "name")!
            let time: String = queryResults.string(forColumn: "time")!
            let intTime: Int = Int(queryResults.int(forColumn: "intTime"))
            FirstViewController4.datas.append(Player(newName: name, newTime: time, newIntTime: intTime))
        }
        FirstViewController.database.close()
//        sortDatas(low: 0, high: FirstViewController.datas.count - 1)
//        FirstViewController.database.close()
    }
}
