//
//  HomeFeedCVC.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/05/11.
//

import UIKit

class HomeFeedCVC: UICollectionViewCell {
  
  @IBOutlet weak var userImageView: UIImageView!
  @IBOutlet weak var userNameLabel: UILabel!
  @IBOutlet weak var feedImageVIew: UIImageView!
  @IBOutlet weak var likeLabel: UILabel!
  @IBOutlet weak var userNameButtomLabel: UILabel!
  @IBOutlet weak var feedContentLabel: UILabel!
  @IBOutlet weak var feedReviewLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    setUI()
  }
  
  @IBAction func clickedLikeBtn(_ sender: Any) {
    
  }
  
  func setUI(){
    userImageView.layer.cornerRadius = userImageView.frame.height/2
  }
  
  func setData(feedData: FeedDataModel) {
    userImageView.image = feedData.feedUserImage
    userNameLabel.text = feedData.feedUserName
    feedImageVIew.image = feedData.feedImage
    likeLabel.text = feedData.feedLike
    userNameButtomLabel.text = feedData.feedUserName
    feedContentLabel.text = feedData.feedContent
    feedReviewLabel.text = feedData.feedReview
  }

}
