//
//  HomeStoryCVC.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/05/11.
//

import UIKit

class HomeStoryCVC: UICollectionViewCell {

  @IBOutlet weak var storyImageView: UIImageView!
  @IBOutlet weak var storyNameLabel: UILabel!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  
  func setData( storyData: StoryDataModel) {
    storyImageView.image = storyData.storyImage
    storyNameLabel.text = storyData.storyName
  }

}
