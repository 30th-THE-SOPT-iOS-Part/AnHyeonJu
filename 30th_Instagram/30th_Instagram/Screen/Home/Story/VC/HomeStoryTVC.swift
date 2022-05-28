//
//  HomeStoryTVC.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/05/11.
//

import UIKit

class HomeStoryTVC: UITableViewCell {
  
  @IBOutlet weak var storyCV: UICollectionView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    registerCVC()
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
  func registerCVC() {
    storyCV.dataSource = self
    storyCV.delegate = self
    
    let storyCVC = UINib(nibName: "HomeStoryCVC", bundle: nil)
    storyCV.register(storyCVC, forCellWithReuseIdentifier: "HomeStoryCVC")
  }
  
}
// MARK: - Extension Part
extension HomeStoryTVC: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return StoryDataModel.sampleData.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeStoryCVC", for: indexPath) as? HomeStoryCVC else {return UICollectionViewCell()}
    
    cell.setData(storyData: StoryDataModel.sampleData[indexPath.row])
    return cell
  }
}

extension HomeStoryTVC: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    //    let screenWidth = UIScreen.main.bounds.width
    //    let cellWidth = screenWidth
    //    let cellHeight = cellWidth * (200/316)
    return CGSize(width: 58, height: 72)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 0, left: 2, bottom: 4, right: 0)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    4
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    4
  }
}
