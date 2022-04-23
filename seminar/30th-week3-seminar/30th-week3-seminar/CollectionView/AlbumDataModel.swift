//
//  AlbumDataModel.swift
//  30th-week3-seminar
//
//  Created by 안현주 on 2022/04/23.
//

import Foundation

struct AlbumDataModel {
  let albumImageName: String
  let albumTitle: String
  let albumSinger: String
}

extension AlbumDataModel {
  static let sampleData: [AlbumDataModel] = [
    AlbumDataModel(albumImageName: "album1", albumTitle: "avante", albumSinger: "안녕주"),
    AlbumDataModel(albumImageName: "album2", albumTitle: "avante", albumSinger: "안녕주"),
    AlbumDataModel(albumImageName: "album3", albumTitle: "avante", albumSinger: "안녕주"),
    AlbumDataModel(albumImageName: "album4", albumTitle: "avante", albumSinger: "안녕주"),
    AlbumDataModel(albumImageName: "album5", albumTitle: "avante", albumSinger: "안녕주"),
    AlbumDataModel(albumImageName: "album6", albumTitle: "avante", albumSinger: "안녕주")
  ]
}
