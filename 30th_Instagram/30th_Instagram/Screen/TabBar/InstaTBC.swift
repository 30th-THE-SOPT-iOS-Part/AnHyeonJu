//
//  InstaTBC.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/04/15.
//

import UIKit

class InstaTBC: UITabBarController{
  
  
  // MARK: - Life Cycle Part
  override func viewDidLoad() {
    super.viewDidLoad()
    setDelegate()
    setTBC()
    tabBarColor()
  }
    
  
  // MARK: - Custom Method Part
  func tabBarColor() {
    self.tabBar.unselectedItemTintColor = .black
  }
  
  func setDelegate() {
    self.delegate = self
  }
  
  func setTBC() {
    //1. 연결할 스토리 보드 인스턴스 생성하기!
    guard let redVC = self.storyboard?.instantiateViewController(withIdentifier: "RedVC"),
          let yellowVC = self.storyboard?.instantiateViewController(withIdentifier: "YellowVC"),
          let greenVC = self.storyboard?.instantiateViewController(withIdentifier: "GreenVC"),
          let blueVC = self.storyboard?.instantiateViewController(withIdentifier: "BlueVC"),
          let purpleVC = self.storyboard?.instantiateViewController(withIdentifier: "PurpleVC")
    else {return}
    
    redVC.tabBarItem = UITabBarItem(
      title: "",
      image: UIImage(named: "icn_home"),
      selectedImage: UIImage(named: "icn_home_selected")
    )
    yellowVC.tabBarItem = UITabBarItem(
      title: "",
      image: UIImage(named: "icn_search"),
      selectedImage: UIImage(named: "icn_search_selected")
    )
    greenVC.tabBarItem = UITabBarItem(
      title: "",
      image: UIImage(named: "icn_reels"),
      selectedImage: UIImage(named: "icn_reels_selected")
    )
    blueVC.tabBarItem = UITabBarItem(
      title: "",
      image: UIImage(named: "icn_shop"),
      selectedImage: UIImage(named: "icn_shop_selected")
    )
    purpleVC.tabBarItem = UITabBarItem(
      title: "",
      image: UIImage(named: "icn_profile")?.withRenderingMode(.alwaysOriginal),
      selectedImage: UIImage(named: "icn_profile_selected")?.withRenderingMode(.alwaysOriginal)
    )
    
    setViewControllers([redVC,yellowVC,greenVC,blueVC,purpleVC], animated: true)
  }
  
}
// MARK: - Extension Part
// 도전과제(1)  : 탭바 커스텀
extension InstaTBC : UITabBarControllerDelegate {
  override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
    if item.image == UIImage(named: "icn_reels") {
      tabBar.unselectedItemTintColor = .white
      tabBar.tintColor = .white
      tabBar.backgroundColor = .black
    } else {
      tabBar.unselectedItemTintColor = .black
      tabBar.tintColor = .black
      tabBar.backgroundColor = .white
    }
  }
}
