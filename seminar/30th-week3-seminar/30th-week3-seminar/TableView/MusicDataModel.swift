//
//  MusicDataModel.swift
//  30th-week3-seminar
//
//  Created by 안현주 on 2022/04/23.
//

import UIKit

struct MusicDataModel {
  let albumCoverImageName: String
  var albumImgage: UIImage? {
    return UIImage(named: albumCoverImageName)
  }
  
  let musicTitle: String
  let author: String
  let playTime: String
  var description: String? {
    return "\(author) • \(playTime)"
  }
  
}

extension MusicDataModel {
  static let sampleData: [MusicDataModel] = [
    MusicDataModel(albumCoverImageName: "albumCover01", musicTitle: "긴밤", author: "서리", playTime: "3:31"),
    MusicDataModel(albumCoverImageName: "albumCover02", musicTitle: "긴밤", author: "서리", playTime: "3:31"),
    MusicDataModel(albumCoverImageName: "albumCover03", musicTitle: "긴밤", author: "서리", playTime: "3:31"),
    MusicDataModel(albumCoverImageName: "albumCover04", musicTitle: "긴밤", author: "서리", playTime: "3:31"),
    MusicDataModel(albumCoverImageName: "albumCover05", musicTitle: "긴밤", author: "서리", playTime: "3:31"),
    MusicDataModel(albumCoverImageName: "albumCover06", musicTitle: "긴밤", author: "서리", playTime: "3:31"),
    MusicDataModel(albumCoverImageName: "albumCover07", musicTitle: "긴밤", author: "서리", playTime: "3:31"),
    MusicDataModel(albumCoverImageName: "albumCover08", musicTitle: "긴밤", author: "서리", playTime: "3:31")
  ]
}
