import UIKit

extension HomeViewController
{
    func configDummyData()
    {
        FirstViewController.datas = [Player(newName: "Kevin", newTime: "11\' : 12\"", newGame: "8x8", newMinute: 11, newSecond: 12), Player(newName: "Peter", newTime: "08\' : 1\"", newGame: "6x6", newMinute: 8, newSecond: 1), Player(newName: "Marvin", newTime: "04\' : 24\"", newGame: "4x4", newMinute: 4, newSecond: 24), Player(newName: "a", newTime: "01\' : 22\"", newGame: "4x4", newMinute: 1, newSecond: 242), Player(newName: "b", newTime: "02\' : 01\"", newGame: "4x4", newMinute: 2, newSecond: 1), Player(newName: "I", newTime: "03\' : 20\"", newGame: "6x6", newMinute: 3, newSecond: 20)]
    }
    
    func configDummyData2()
    {
        FirstViewController4.datas = [
        Player(newName: "Kevin", newTime: "12", newIntTime: 12), Player(newName: "David", newTime: "15", newIntTime: 15), Player(newName: "Gigi", newTime: "4", newIntTime: 4), Player(newName: "Johnny", newTime: "23", newIntTime: 23)]
    }
    
    
}

