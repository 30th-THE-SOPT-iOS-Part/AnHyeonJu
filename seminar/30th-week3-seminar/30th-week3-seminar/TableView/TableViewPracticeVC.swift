//
//  TableViewPracticeVC.swift
//  30th-week3-seminar
//
//  Created by 안현주 on 2022/04/23.
//

import UIKit

class TableViewPracticeVC: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    registerXib()
  }
  
  func registerXib() {
    let nib = UINib(nibName: MusicTVC.identifier, bundle: nil)
    tableView.register(nib, forCellReuseIdentifier: MusicTVC.identifier)
    
    tableView.delegate = self
    tableView.dataSource = self
  }
}


extension TableViewPracticeVC: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 90
  }
}

extension TableViewPracticeVC: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return MusicDataModel.sampleData.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: MusicTVC.identifier, for: indexPath) as? MusicTVC else { return UITableViewCell()}
    
    cell.setData(MusicDataModel.sampleData[indexPath.row])
    
    return cell
  }
  
  
}
