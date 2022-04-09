//
//  TabBarVC.swift
//  30th-week2-seminar
//
//  Created by 안현주 on 2022/04/09.
//

import UIKit

class TabBarVC: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setTabBar()
  }
  
  
  func setTabBar(){
    guard let orangeVC = self.storyboard?.instantiateViewController(withIdentifier: "OrangeVC"),
          let yellowVC = self.storyboard?.instantiateViewController(withIdentifier: "YellowVC")
    else { return }
    
    orangeVC.tabBarItem = UITabBarItem (
      title : "home",
      image: UIImage(named: "home"),
      selectedImage: UIImage(named: "homefilled")
    )
    
    yellowVC.tabBarItem = UITabBarItem (
      title : "user",
      image: UIImage(named: "user"),
      selectedImage: UIImage(named: "userfilled")
    )
    tabBar.tintColor = .yellow
    
    //3. VC에 연결
    setViewControllers([orangeVC,yellowVC], animated: true)
  }
  
}
