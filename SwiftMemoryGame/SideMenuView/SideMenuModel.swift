import UIKit

class SideMenuModel: NSObject {
    var title: String!
    var icon: UIImage!
    
    init(newTitle: String, newImage: UIImage) {
        self.title = newTitle
        self.icon = newImage
    }
}
