import Foundation
import UIKit
import FMDB
import sqlite3


extension FirstViewController
{
    
    func configDatabase ()
    {
        let fileManager = FileManager.default
        let dirPath = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDir = dirPath[0].path
        fileManager.changeCurrentDirectoryPath(docsDir)

        let newDir = dirPath[0].appendingPathComponent("data").path
        print(newDir)
        
        print("Configurating database...")
        let desktopPath: String = "/Users/leminhtuan/Desktop/IMT-soft/Swift/SwiftMemoryGame/players"
        FirstViewController.database = FMDatabase(path: desktopPath)
        FirstViewController.database.open()
        print("\(FirstViewController.database.isOpen)")
        
        let device: String = "\(UIDevice.version())"
        print("this device is of model \(device)")
        
        if !FirstViewController.database.tableExists("players")
        {
            do
            {
                try FirstViewController.database.executeUpdate("create table players(name text, time text, gamemode text)", values: nil)
                print("table created")
            }
            catch
            {
                print("error making table")
            }
        }
    }
}
