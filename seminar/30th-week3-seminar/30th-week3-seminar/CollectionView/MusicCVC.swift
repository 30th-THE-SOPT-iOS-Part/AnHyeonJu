//
//  MusicCVC.swift
//  30th-week3-seminar
//
//  Created by 안현주 on 2022/04/23.
//

import UIKit

class MusicCVC: UICollectionViewCell {

  static let identifier = "MusicCVC"
  
  @IBOutlet weak var albumImageView: UIImageView!
  @IBOutlet weak var albumTitleLabel: UILabel!
  @IBOutlet weak var singerLabel: UILabel!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  func setData(albumData: AlbumDataModel) {
    albumImageView.image = UIImage(named: albumData.albumImageName)
    albumTitleLabel.text = albumData.albumTitle
    singerLabel.text = albumData.albumSinger
  }
  
}
