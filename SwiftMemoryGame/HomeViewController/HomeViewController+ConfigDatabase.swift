import UIKit
import FMDB

extension HomeViewController
{
    func configDatabase ()
    {
        var path: String!
        let fileManager = FileManager.default
        let dirPath = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString) as String
        let dbFileName = "player.sqlite3"
        let docsDir = dirPath[0].path
        fileManager.changeCurrentDirectoryPath(docsDir)
        
        print("Configurating database...")
        if UIDevice.current.name == "Tuan (Kevin)'s iphone"
        {
            print("path is now new Directory")
            let pathToDatabase: String = documentDirectory.appending("/\(dbFileName)")
            print(pathToDatabase)
            FirstViewController.database = FMDatabase(path: pathToDatabase)
            }
        else
        {
            path = "/Users/leminhtuan/Desktop/IMT-soft/Swift/SwiftMemoryGame/players"
            FirstViewController.database = FMDatabase(path: path)
        }
        
        FirstViewController.database.open()
                
        if !FirstViewController.database.tableExists("players")
        {
            do
            {
                try FirstViewController.database.executeUpdate("create table players(name text, time text, gamemode text, second int, minute int)", values: nil)
            }
            catch
            {
                print("error making player table")
            }
        }
        
        if !FirstViewController.database.tableExists("signInfo")
        {
            do
            {
                try FirstViewController.database.executeUpdate("create table signInfo(username text, password text)", values: nil)
            }
            catch
            {
                print("error making signInfo table")
            }
        }
        
//        for i: Player in FirstViewController.datas
//        {
//            do
//            {
//                print("dummy data put")
//                try FirstViewController.database.executeUpdate("INSERT into players (name, time, gamemode, second, minute) VALUES (?, ?, ?, ?, ?)", values: [i.name!, i.timeBeaten!, i.gameModePlayed!, i.secondPlayed!, i.minutePlayed! ?? NSNull()])
//            }
//            catch
//            {
//                print("Cannot make new data")
//            };
//        }
        
        FirstViewController.database.close()
    }
}
