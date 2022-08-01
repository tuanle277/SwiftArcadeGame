import UIKit
import FMDB

extension HomeViewController
{
    func configDatabase2 ()
    {
        var path: String!
        let fileManager = FileManager.default
        let dirPath = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString) as String
        let dbFileName = "player.sqlite3"
        let docsDir = dirPath[0].path
        fileManager.changeCurrentDirectoryPath(docsDir)
        
        print("Configurating database 2...")
        if UIDevice.current.name == "Tuan (Kevin)'s iphone"
        {
            print("path is now new Directory")
            let pathToDatabase: String = documentDirectory.appending("/\(dbFileName)")
            print(pathToDatabase)
            HomeViewController.database = FMDatabase(path: pathToDatabase)
            }
        else
        {
            path = "/Users/leminhtuan/Desktop/IMT-soft/Swift/SwiftArcadeGame/players"
            HomeViewController.database = FMDatabase(path: path)
        }
        
        HomeViewController.database.open()
                
        if !HomeViewController.database.tableExists("dinPlayers")
        {
            do
            {
                try HomeViewController.database.executeUpdate("create table dinPlayers(name text, time text, intTime int)", values: nil)
            }
            catch
            {
                print("error making dinPlayer table")
            }
        }

        
//        for i: Player in FirstViewController4.datas
//        {
//            do
//            {
//                print("dummy data put")
//                try FirstViewController.database.executeUpdate("INSERT into dinPlayers (name, time, intTime) VALUES (?, ?, ?)", values: [i.name!, i.dinTimeBeaten!, i.dinIntTimeBeaten ?? NSNull()])
//            }
//            catch
//            {
//                print("Cannot make new data")
//            };
//        }
        
        HomeViewController.database.close()
    }
}
