//
//  SignUpPwVC.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/04/10.
//

import UIKit

class SignUpPwVC: UIViewController {
  
  // MARK: - Vars & Lets Part
  var userName: String?
  
  // MARK: - UI Component Part
  @IBOutlet weak var pwTextField: UITextField!
  @IBOutlet weak var nextBtn: UIButton!{
    didSet{
      nextBtn.isEnabled = false
      nextBtn.backgroundColor = UIColor(displayP3Red: 126/255, green: 192/255, blue: 250/255, alpha: 1)
    }
  }
  
  
  // MARK: - Life Cycle Part
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    setTextFieldEmpty()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setUI()
    setTextField()
    pressBtn()
    hideKeyboard()
  }
  
  // MARK: - IBAction Part
  
  
  // MARK: - Custom Method Part
  private func setUI() {
    nextBtn.layer.cornerRadius = 5
    self.navigationController?.navigationBar.topItem?.title = ""
    self.navigationController?.navigationBar.tintColor = .black
  }
  
  private func setTextField() {
    pwTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
  }
  
  private func setTextFieldEmpty() {
    pwTextField.text = ""
  }
  
  private func pressBtn() {
    nextBtn.press {
      guard let welcomeVC =  self.storyboard?.instantiateViewController(withIdentifier: "WelcomeVC") as? WelcomeVC else {return}
      welcomeVC.userName = self.userName
      welcomeVC.modalPresentationStyle = .fullScreen
      self.present(welcomeVC, animated: true, completion: {
        self.navigationController?.popToRootViewController(animated: true)
      })
    }
  }
  
  // MARK: - @objc Function Part
  @objc func textFieldDidChange(_ sender:Any?) -> Void {
    nextBtn.isEnabled = pwTextField.hasText
    if nextBtn.isEnabled == true {
      nextBtn.backgroundColor = .systemBlue
    } else {
      nextBtn.backgroundColor = UIColor(displayP3Red: 126/255, green: 192/255, blue: 250/255, alpha: 1)
    }
  }
}
// MARK: - Extension Part
