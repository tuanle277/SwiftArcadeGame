import Foundation
import UIKit
import FMDB
import sqlite3


extension FirstViewController
{
    
    func configDatabase ()
    {
        print("Configurating database...")
        let desktopPath: String = "/Users/leminhtuan/Desktop/IMT-soft/Swift/SwiftMemoryGame/players"
        
        FirstViewController.database = FMDatabase(path: desktopPath)
        FirstViewController.database.open()
        print("\(FirstViewController.database.isOpen)")
        
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
