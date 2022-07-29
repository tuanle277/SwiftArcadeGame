import UIKit

extension HomeViewController
{
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        if screenLoaded == 0
        {
            configDummyData2()
            configDatabase1()
            configDatabase2()
            fetchDataNum()
            fetchDataDin()
            screenLoaded += 1
        }

    }
}
