//
//  RedVC.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/04/15.
//

import UIKit

enum HomeCellCase{
  case story
  case feed
}

class HomeVC: UIViewController {
  
  // MARK: - Vars & Lets Part
  private let cellCaseList: [HomeCellCase] = [.story, .feed]
  
  // MARK: - UI Component Part
  @IBOutlet weak var headerView: UIView!
  @IBOutlet weak var homeTV: UITableView!
  
  
  // MARK: - Life Cycle Part
  
  override func viewDidLoad() {
    super.viewDidLoad()
    makeDelegate()
    registerXib()
    setTableView()
  }
  
  // MARK: - IBAction Part
  
  
  // MARK: - Custom Method Part
  func makeDelegate() {
    homeTV.dataSource = self
    homeTV.delegate = self
  }
  
  func registerXib() {
    let storyTVC = UINib(nibName: "HomeStoryTVC", bundle: nil)
    homeTV.register(storyTVC, forCellReuseIdentifier: "HomeStoryTVC")
    
    let feedTVC = UINib(nibName: "HomeFeedTVC", bundle: nil)
    homeTV.register(feedTVC, forCellReuseIdentifier: "HomeFeedTVC")
  }
  
  func setTableView() {
    //테이블 뷰 셀 사이의 회색 선 없애기
    homeTV.separatorStyle = UITableViewCell.SeparatorStyle.none
  }
  
  // MARK: - @objc Function Part
  
}
// MARK: - Extension Part
extension HomeVC: UITableViewDelegate {
  // 높이 지정 index별
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    if indexPath.row == 0 {
      return 85
    } else {
      return 550
    }
//    return UITableView.automaticDimension
  }
}

extension HomeVC: UITableViewDataSource {
  //한 section마다 몇개의 row를 넣어야하는지 지정하는 함수
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 2
  }
  
//  func numberOfSections(in tableView: UITableView) -> Int {
//    return 2
//  }
  
  
  // indexPath를 활용해 TableViewcell 별로 데이터를 다르게 지정할 수 있다.
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //section을 row로 바꿈..!
    let cellCase = cellCaseList[indexPath.row]
    
    switch(cellCase){
      
    case .story:
      guard let storyTVC = tableView.dequeueReusableCell(withIdentifier: "HomeStoryTVC") as?
              HomeStoryTVC else {return UITableViewCell()}
      storyTVC.selectionStyle = .none
      return storyTVC
      
    case .feed:
      guard let feedTVC = tableView.dequeueReusableCell(withIdentifier: "HomeFeedTVC") as?
              HomeFeedTVC else {return UITableViewCell()}
      feedTVC.selectionStyle = .none
      return feedTVC
      
    }
  }
}

