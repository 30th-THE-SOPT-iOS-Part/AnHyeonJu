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
  @IBOutlet weak var nextBtn: UIButton!
  
  
  // MARK: - Life Cycle Part
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    initialize()
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
  
  private func initialize() {
    nextBtn.isEnabled = false
    nextBtn.backgroundColor = UIColor(displayP3Red: 149/255, green: 200/255, blue: 248/255, alpha: 1)
    
    pwTextField.text = ""
  }
  
  
  private func pressBtn() {
    nextBtn.press {
      guard let welcomeVC =  self.storyboard?.instantiateViewController(withIdentifier: "WelcomeVC") as? WelcomeVC else {return}
      welcomeVC.userName = self.userName
      welcomeVC.modalPresentationStyle = .fullScreen
      self.present(welcomeVC, animated: true, completion: {
        //2주차 심화과제 : 뷰 스택 쌓이는것 해결...!
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
      nextBtn.backgroundColor = UIColor(displayP3Red: 149/255, green: 200/255, blue: 248/255, alpha: 1)
    }
  }
}
// MARK: - Extension Part
//extension SignUpVC {
//    func requestSignUp() {
//        UserSignUpService.shared.signUp(email: emailTextField.text ?? "",
//                                        name: nameTextField.text ?? "",
//                                     password: passwordTextField.text ?? "") { responseData in
//            switch  responseData {
//            case .success(let signupResponse):
//                guard let response = signupResponse as? SignUpResponseData else { return }
//                if response.data != nil {
//                    UserDefaults.standard.set(self.nameTextField.text, forKey: UserDefaults.Keys.loginUserName)
//                    self.makeAlert(title: "회원가입", message: response.message, okAction: { _ in
//                        guard let welcomeVC = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeVC")as? WelcomeVC else {return}
//                        welcomeVC.modalPresentationStyle = .fullScreen
//                        self.present(welcomeVC, animated: true, completion: {
//                            self.navigationController?.popToRootViewController(animated: true)
//                        })
//                    })
//                }
//            case .requestErr(let signupResponse):
//                print("requestERR \(signupResponse)")
//                guard let response = signupResponse as? SignUpResponseData else { return }
//                self.makeAlert(title: "회원가입", message: response.message ,okAction: { _ in
//                    self.setTextFieldEmpty()
//                })
//            case .pathErr(let signupResponse):
//                print("pathErr")
//                guard let response = signupResponse as? SignUpResponseData else { return }
//                self.makeAlert(title: "회원가입", message: response.message, okAction: { _ in
//                    self.setTextFieldEmpty()
//                })
//            case .serverErr:
//                print("serverErr")
//            case .networkFail:
//                print("networkFail")
//            }
//        }
//    }
//}
