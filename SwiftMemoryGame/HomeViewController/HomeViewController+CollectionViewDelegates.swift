import UIKit

extension HomeViewController
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return datas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GameCollectionCell", for: indexPath) as! GameCollectionCell
        let game = datas[indexPath.row]
        cell.setUp(game: game)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row
        {
        case 2:
            performSegue(withIdentifier: "toTicTacToe", sender: nil)
        case 1:
            performSegue(withIdentifier: "toNumberMemory", sender: nil)
        default:
            return
        }
    }
}
