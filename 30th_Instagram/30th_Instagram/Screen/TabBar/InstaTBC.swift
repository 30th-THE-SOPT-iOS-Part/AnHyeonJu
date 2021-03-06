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
//    setRootView()
    setDelegate()
    setTBC()
    tabBarColor()
    
  }
  
  
  // MARK: - Custom Method Part
//  func setRootView() {
//
//    let tabbar = UIStoryboard.init(name: "TabBar", bundle: nil)
//    guard let vc = tabbar.instantiateViewController(withIdentifier: "InstaTBC") as? InstaTBC else {return}
//
//    let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate
//    sceneDelegate.window?.rootViewController  = vc
//
//  }
  
  func tabBarColor() {
    self.tabBar.unselectedItemTintColor = .black
  }
  
  func setDelegate() {
    self.delegate = self
  }
  
  func setTBC() {
    //1. 연결할 스토리 보드 인스턴스 생성하기!
    guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC"),
          let searchVC = self.storyboard?.instantiateViewController(withIdentifier: "SearchVC"),
          let reelsVC = self.storyboard?.instantiateViewController(withIdentifier: "ReelsVC"),
          let shopVC = self.storyboard?.instantiateViewController(withIdentifier: "ShopVC"),
          let profileVC = self.storyboard?.instantiateViewController(withIdentifier: "ProfileVC")
    else {return}
    
    homeVC.tabBarItem = UITabBarItem(
      title: "",
      image: UIImage(named: "icn_home"),
      selectedImage: UIImage(named: "icn_home_selected")
    )
    searchVC.tabBarItem = UITabBarItem(
      title: "",
      image: UIImage(named: "icn_search"),
      selectedImage: UIImage(named: "icn_search_selected")
    )
    reelsVC.tabBarItem = UITabBarItem(
      title: "",
      image: UIImage(named: "icn_reels"),
      selectedImage: UIImage(named: "icn_reels_selected")
    )
    shopVC.tabBarItem = UITabBarItem(
      title: "",
      image: UIImage(named: "icn_shop"),
      selectedImage: UIImage(named: "icn_shop_selected")
    )
    profileVC.tabBarItem = UITabBarItem(
      title: "",
      image: UIImage(named: "icn_profile")?.withRenderingMode(.alwaysOriginal),
      selectedImage: UIImage(named: "icn_profile_selected")?.withRenderingMode(.alwaysOriginal)
    )
    
    setViewControllers([homeVC,searchVC,reelsVC,shopVC,profileVC], animated: true)
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
