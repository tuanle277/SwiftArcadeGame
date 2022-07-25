import UIKit

extension HomeViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUIs()
        configureSideMenu()
        self.gameCollectionView.delegate = self
        self.gameCollectionView.dataSource = self
        self.gameCollectionView.register(UINib(nibName: "GameCollectionCell", bundle: nil), forCellWithReuseIdentifier: "GameCollectionCell")
        
    }
}
