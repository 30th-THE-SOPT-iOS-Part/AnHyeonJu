//
//  SecondVC.swift
//  30th-week1-seminar
//
//  Created by 안현주 on 2022/04/02.
//

import UIKit

class SecondVC: UIViewController {

  @IBOutlet weak var dataLabel: UILabel!
  var message: String?
  
  
  override func viewDidLoad() {
        super.viewDidLoad()
    setMessage()
    }
    
  private func setMessage() {
    if let message = message {
      dataLabel.text = message
      dataLabel.sizeToFit()
    }
  }
  
  @IBAction func backButtonDidTap(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
  }
  
}
