//
//  MusicTVC.swift
//  30th-week3-seminar
//
//  Created by 안현주 on 2022/04/23.
//

import UIKit

class MusicTVC: UITableViewCell {
  
  //Cell을 구분하기 위한 IDentifier
  static let identifier = "MusicTVC"
  
  @IBOutlet weak var albumCoverImage: UIImageView!
  @IBOutlet weak var musicTitleLabel: UILabel!
  @IBOutlet weak var musicDescriptionLabel: UILabel!
  @IBOutlet weak var moveBtn: UIImageView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  //각 cell 별로 다른 정보가 표시되어야하므로, 값을 넣어주는 함수를 새성
  func setData(_ musicData: MusicDataModel) {
    albumCoverImage.image = musicData.albumImgage
    musicTitleLabel.text = musicData.musicTitle
    musicDescriptionLabel.text = musicData.description
  }
  
}
