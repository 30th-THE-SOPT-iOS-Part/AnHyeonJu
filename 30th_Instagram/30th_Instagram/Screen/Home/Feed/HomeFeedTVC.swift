//
//  HomeFeedTVC.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/05/11.
//

import UIKit

class HomeFeedTVC: UITableViewCell {
  
  @IBOutlet weak var feedCV: UICollectionView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    registerCVC()
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
  }
  
  func registerCVC() {
    feedCV.dataSource = self
    feedCV.delegate = self
    
    let feedCVC = UINib(nibName: "HomeFeedCVC", bundle: nil)
    feedCV.register(feedCVC, forCellWithReuseIdentifier: "HomeFeedCVC")
  }
  
}
// MARK: - Extension Part
extension HomeFeedTVC: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return FeedDataModel.sampleData.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeFeedCVC", for: indexPath) as? HomeFeedCVC else {return UICollectionViewCell()}
    
    cell.setData(feedData: FeedDataModel.sampleData[indexPath.row])
    return cell
  }
}

extension HomeFeedTVC: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    //    let screenWidth = UIScreen.main.bounds.width
    //    let cellWidth = screenWidth
    //    let cellHeight = cellWidth * (200/316)
    return CGSize(width: 375, height: 488)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 4, left: 0, bottom: 0, right: 0)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    0
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    0
  }
}

