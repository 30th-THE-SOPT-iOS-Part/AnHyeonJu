//
//  FeedDataModel.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/05/11.
//

import UIKit

struct FeedDataModel {
  let feedUserImageName: String
  var feedUserImage: UIImage? {
    return UIImage(named: feedUserImageName)
  }
  var feedUserName: String
  var feedImageName : String
  var feedImage: UIImage? {
    return UIImage(named: feedImageName)
  }
  var feedLike: String
  var feedContent: String
  var feedReview: String
  
}

extension FeedDataModel {
  static let sampleData: [FeedDataModel] = [
    FeedDataModel(feedUserImageName: "1", feedUserName: "hellozo0", feedImageName: "1", feedLike: " 좋아요 30개", feedContent: "🫠일찍일어나는 새가 개 피곤하다", feedReview: "댓글 19개 모두 보기"),
    FeedDataModel(feedUserImageName: "2", feedUserName: "hellozo0", feedImageName: "2", feedLike: " 좋아요 30개", feedContent: "🫠일찍일어나는 새가 개 피곤하다", feedReview: "댓글 19개 모두 보기"),
    FeedDataModel(feedUserImageName: "3", feedUserName: "hellozo0", feedImageName: "3", feedLike: " 좋아요 30개", feedContent: "🫠일찍일어나는 새가 개 피곤하다", feedReview: "댓글 19개 모두 보기"),
    FeedDataModel(feedUserImageName: "4", feedUserName: "hellozo0", feedImageName: "4", feedLike: " 좋아요 30개", feedContent: "🫠일찍일어나는 새가 개 피곤하다", feedReview: "댓글 19개 모두 보기"),
    FeedDataModel(feedUserImageName: "5", feedUserName: "hellozo0", feedImageName: "5", feedLike: " 좋아요 30개", feedContent: "🫠일찍일어나는 새가 개 피곤하다", feedReview: "댓글 19개 모두 보기"),
    FeedDataModel(feedUserImageName: "6", feedUserName: "hellozo0", feedImageName: "6", feedLike: " 좋아요 30개", feedContent: "🫠일찍일어나는 새가 개 피곤하다", feedReview: "댓글 19개 모두 보기"),
    FeedDataModel(feedUserImageName: "1", feedUserName: "hellozo0", feedImageName: "1", feedLike: " 좋아요 30개", feedContent: "🫠일찍일어나는 새가 개 피곤하다", feedReview: "댓글 19개 모두 보기"),
    FeedDataModel(feedUserImageName: "2", feedUserName: "hellozo0", feedImageName: "2", feedLike: " 좋아요 30개", feedContent: "🫠일찍일어나는 새가 개 피곤하다", feedReview: "댓글 19개 모두 보기")
  ]
}
