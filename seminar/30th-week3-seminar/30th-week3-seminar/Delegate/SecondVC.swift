//
//  SecondVC.swift
//  30th-week3-seminar
//
//  Created by 안현주 on 2022/04/23.
//

import UIKit

protocol SecondVCDelegate {
  func sendData(data: String)
}

class SecondVC: UIViewController {

  @IBOutlet weak var dataTextField: UITextField!
  
  var delegate: SecondVCDelegate?
  
  override func viewDidLoad() {
        super.viewDidLoad()

    }
    
  @IBAction func sendDataBtnDidTap(_ sender: Any) {
    if let text = dataTextField.text {
      delegate?.sendData(data: text)
    }
    self.navigationController?.popViewController(animated: true)
  }
  
}
