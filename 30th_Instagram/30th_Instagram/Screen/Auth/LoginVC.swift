//
//  LoginVC.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/04/10.
//

import UIKit

class LoginVC: UIViewController, UITextFieldDelegate {
  
  // MARK: - Vars & Lets Part
  
  // MARK: - UI Component Part
  @IBOutlet weak var idTextField: UITextField!
  @IBOutlet weak var pwTextField: UITextField!
  @IBOutlet weak var loginBtn: UIButton!
  @IBOutlet weak var signUpBtn: UIButton!
  @IBOutlet weak var eyeBtn: UIButton!
  
  // MARK: - Life Cycle Part
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    btnEnabled()
    initialize()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setUI()
    pressBtn()
    setTextField()
    hideKeyboard()
  }
  
  // MARK: - IBAction Part
  
  
  // MARK: - Custom Method Part
  private func setUI() {
    loginBtn.layer.cornerRadius = 5
    idTextField.clearButtonMode = .whileEditing
    idTextField.clearsOnBeginEditing = true
  }
  
  private func setTextField() {
    [idTextField, pwTextField].forEach{
      $0?.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
  }
  
  private func btnEnabled(){
    loginBtn.isEnabled = false
    loginBtn.backgroundColor = UIColor(displayP3Red: 149/255, green: 200/255, blue: 248/255, alpha: 1)
  }
  
  private func initialize() {
    [idTextField, pwTextField].forEach {
      $0.text = ""
    }
  }
  
  private func pressBtn() {
    //Present
    loginBtn.press {
      self.requestLogin()
    }
    
    //Push
    signUpBtn.press {
      guard let signUpVC =  self.storyboard?.instantiateViewController(withIdentifier: "SignUpNickNameVC")  else {return}
      
      self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    
    //Clicked
    eyeBtn.press { [self] in
      eyeBtn.isSelected.toggle()
      if eyeBtn.isSelected {
        eyeBtn.backgroundColor = .clear
        eyeBtn.setImage(UIImage(named: "icn_password_shown"), for: .normal)
        pwTextField.isSecureTextEntry = false
      } else {
        eyeBtn.backgroundColor = .clear
        eyeBtn.setImage(UIImage(named: "icn_password_hidden"), for: .normal)
        pwTextField.isSecureTextEntry = true
      }
      
    }
  }
  
  // MARK: - @objc Function Part
  @objc func textFieldDidChange(_ sender:Any?) -> Void {
    loginBtn.isEnabled = idTextField.hasText && pwTextField.hasText
    if loginBtn.isEnabled == true {
      loginBtn.backgroundColor = .systemBlue
    } else {
      loginBtn.backgroundColor = UIColor(displayP3Red: 149/255, green: 200/255, blue: 248/255, alpha: 1)
    }
  }
  
}
// MARK: - Extension Part
//🌱UserDeFaults 사용
extension LoginVC {
  func requestLogin() {
    UserLoginService.shared.login(email: idTextField.text ?? "",
                                  password: pwTextField.text ?? "") { [self] responseData in
      switch  responseData {
      case .success(let loginResponse):
        guard let response = loginResponse as? LoginResponseData else { return }
        if response.data != nil {
          
          UserDefaults.standard.set(self.idTextField.text, forKey: UserDefaults.Keys.loginUserName)
          //                  UserDefaults.standard.set(response.data?.name, forKey: UserDefaults.Keys.loginUserName)
          self.makeAlert(title: "로그인", message: response.message, okAction: { _ in
            guard let welcomeVC =  self.storyboard?.instantiateViewController(withIdentifier: "WelcomeVC") as? WelcomeVC else {return}
            
            //      welcomeVC.userName = self.idTextField.text
            welcomeVC.modalPresentationStyle = .fullScreen
            self.present(welcomeVC, animated: true, completion: nil)
          })
          
          
        }
      case .requestErr(let loginResponse):
        print("requestERR \(loginResponse)")
        guard let response = loginResponse as? LoginResponseData else { return }
        self.makeAlert(title: "로그인", message: response.message, okAction: { _ in
          self.initialize()
          self.btnEnabled()
        })
      case .pathErr(let loginResponse):
        print("pathErr")
        guard let response = loginResponse as? LoginResponseData else { return }
        self.makeAlert(title: "로그인", message: response.message, okAction: { _ in
          self.initialize()
          self.btnEnabled()
        })
      case .serverErr:
        print("serverErr")
      case .networkFail:
        print("networkFail")
      }
    }
  }
}
//case .success(let loginResponse):
//                guard let response = loginResponse as? LoginResponseData else { return }
//                if response.data != nil {
//                    UserDefaults.standard.set(self.nameTextField.text, forKey: UserDefaults.Keys.loginUserName)
//                    self.makeAlert(title: "로그인", message: response.message, okAction: { _ in
//                        guard let welcomeVC = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeVC") as? WelcomeVC else {return}
//                        welcomeVC.modalPresentationStyle = .fullScreen
//                        self.present(welcomeVC, animated: true, completion: nil)
//                    })
//                }
