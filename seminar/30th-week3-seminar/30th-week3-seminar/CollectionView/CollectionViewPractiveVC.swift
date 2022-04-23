//
//  CollectionViewPractiveVC.swift
//  30th-week3-seminar
//
//  Created by 안현주 on 2022/04/23.
//

import UIKit

class CollectionViewPractiveVC: UIViewController {
  
  
  @IBOutlet weak var collectionView: UICollectionView!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    registerNib()
  }
  
  func registerNib() {
    let nib = UINib(nibName: MusicCVC.identifier, bundle: nil)
    collectionView.register(nib, forCellWithReuseIdentifier: MusicCVC.identifier)
    
    collectionView.delegate = self
    collectionView.dataSource = self
    
  }
  
}

extension CollectionViewPractiveVC : UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let width = UIScreen.main.bounds.width
    
    let cellWidth = width * (176/375)
    let cellHeight = cellWidth * (213/176)
    
    return CGSize(width: cellWidth, height: cellHeight)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top:5, left: 10, bottom: 10, right: 5)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 5
  }
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 3
  }
}

extension CollectionViewPractiveVC : UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return AlbumDataModel.sampleData.count
  }
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MusicCVC.identifier, for: indexPath) as?  MusicCVC else {
      return UICollectionViewCell()
    }
    cell.setData(albumData: AlbumDataModel.sampleData[indexPath.row])
    return cell
  }
}
