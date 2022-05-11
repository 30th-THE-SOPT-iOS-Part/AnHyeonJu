//
//  WelcomeVC.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/04/10.
//

import UIKit

class WelcomeVC: UIViewController {
  
  // MARK: - Vars & Lets Part
  var userName: String?
  
  // MARK: - UI Component Part
  @IBOutlet weak var welcomeLabel: UILabel!
  @IBOutlet weak var completeBtn: UIButton!
  @IBOutlet weak var loginBtn: UIButton!
  
  // MARK: - Life Cycle Part
  override func viewDidLoad() {
    super.viewDidLoad()
    setUserName()
    pressBtn()
    setUI()
  }
  
  // MARK: - IBAction Part
  
  
  // MARK: - Custom Method Part
  private func setUI() {
      completeBtn.layer.cornerRadius = 5
  }
  
  private func setUserName() {
    if let userName = userName {
      welcomeLabel.text = userName + "님, Instagram에 \n오신것을 환영합니다."
      welcomeLabel.sizeToFit()
    }
  }
  
  private func pressBtn() {
    //Present
    completeBtn.press {
      
      let tabbar = UIStoryboard.init(name: "TabBar", bundle: nil)
      guard let instaTBC = tabbar.instantiateViewController(withIdentifier: "InstaTBC") as? InstaTBC else {return}
      
      (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootVC(instaTBC, animated: false)

    }
    
    //Back to LoginVC
    //present로  WelcomeVC를 띄운것을 dismiss
    loginBtn.press {
      self.dismiss(animated: true, completion: nil)
    }
  }
  
//  func setNameInLabel() {
//      if let user = UserDefaults.standard.string(forKey: UserDefaults.Keys.loginUserName) {
//          nameLabel.text = "\(user)님 환영합니다!"
//          nameLabel.sizeToFit()
//      }
//  }
  
  // MARK: - @objc Function Part
  
}
// MARK: - Extension Part
