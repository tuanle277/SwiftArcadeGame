//import UIKit
//
//extension FirstViewController
//{
//    func configDeviceDatabase()
//    {
//        let fileManager = FileManager.default
//        let dirPath = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
//        let docsDir = dirPath[0].path
//        fileManager.changeCurrentDirectoryPath(docsDir)
//
//        let newDir = dirPath[0].appendingPathComponent("data").path
//        print(newDir)
//
//        // create a new directory
//        do {
//        try fileManager.createDirectory(atPath: newDir, withIntermediateDirectories: true, attributes: nil)
//
//        } catch let error {
//        print(error.localizedDescription)
//        }
//
////        // print local files
////        do {
////        let fileList = try fileManager.contentsOfDirectory(atPath: "/")
////
////        for filename in fileList {
////        print("this is a local file \(filename)")
////        }
////
////        } catch let err {
////
////        print(err.localizedDescription)
////
////        }
//    }
//}
