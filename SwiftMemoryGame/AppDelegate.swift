import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let fileManager = FileManager.default
        let dirPath = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDir = dirPath[0].path
        fileManager.changeCurrentDirectoryPath(docsDir)
        
        let newDir = dirPath[0].appendingPathComponent("data").path
        
        // create a new directory
        do {
        try fileManager.createDirectory(atPath: newDir, withIntermediateDirectories: true, attributes: nil)

        } catch let error {
        print(error.localizedDescription)
        }
        
        // print local files
        do {
        let fileList = try fileManager.contentsOfDirectory(atPath: "/")

        for filename in fileList {

        print("this is a local file \(filename)")

        }

        } catch let err {

        print(err.localizedDescription)

        }
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

