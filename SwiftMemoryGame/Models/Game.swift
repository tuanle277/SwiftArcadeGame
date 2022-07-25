import UIKit

final class Game: NSObject {
    var title: String!
    var backgroundColor: UIColor!
    
    init(newTitle: String, newBackgroundColor: UIColor)
    {
        title = newTitle
        backgroundColor = newBackgroundColor
    }
}
