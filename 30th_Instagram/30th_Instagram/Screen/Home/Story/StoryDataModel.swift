//
//  StoryDataModel.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/05/11.
//

import UIKit

struct StoryDataModel {
  let storyImageName: String
  var storyImage: UIImage? {
    return UIImage(named: storyImageName)
  }
  var storyName: String
  
}

extension StoryDataModel {
  static let sampleData: [StoryDataModel] = [
    StoryDataModel(storyImageName: "1", storyName: "1"),
    StoryDataModel(storyImageName: "2", storyName: "2"),
    StoryDataModel(storyImageName: "3", storyName: "3"),
    StoryDataModel(storyImageName: "4", storyName: "4"),
    StoryDataModel(storyImageName: "5", storyName: "5"),
    StoryDataModel(storyImageName: "6", storyName: "6"),
    StoryDataModel(storyImageName: "1", storyName: "1"),
    StoryDataModel(storyImageName: "2", storyName: "2"),
    StoryDataModel(storyImageName: "3", storyName: "3"),
    StoryDataModel(storyImageName: "4", storyName: "4"),
    StoryDataModel(storyImageName: "5", storyName: "5"),
    StoryDataModel(storyImageName: "6", storyName: "6")
  ]
}
