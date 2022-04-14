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
      
      instaTBC.modalPresentationStyle = .fullScreen
      self.present(instaTBC, animated: true, completion: nil)
    }
    
    //Back to LoginVC
    loginBtn.press {
      self.dismiss(animated: true, completion: nil)
    }
  }
  
  // MARK: - @objc Function Part
  
}
// MARK: - Extension Part
