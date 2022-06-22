import UIKit

extension FirstViewController
{
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        configDatabase()
        fetchData()
    }
}
