import UIKit

extension HomeViewController
{
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        if screenLoaded == 0
        {
            configDatabase()
            fetchData()
            screenLoaded += 1
        }

    }
}
