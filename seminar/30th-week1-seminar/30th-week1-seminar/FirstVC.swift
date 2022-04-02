//
//  FirstVC.swift
//  30th-week1-seminar
//
//  Created by 안현주 on 2022/04/02.
//

import UIKit

class FirstVC: UIViewController {

  @IBOutlet weak var presentBtn: UIButton!{
    didSet {
      presentBtn.layer.cornerRadius = 15
    }
  }

  @IBOutlet weak var dataTextField: UITextField!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    }
    
  @IBAction func gotoSecondVC(_ sender: Any) {
    guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC else {return}
    
    nextVC.modalPresentationStyle = .pageSheet
    nextVC.modalTransitionStyle = .crossDissolve
    nextVC.message = dataTextField.text
    
    self.present(nextVC, animated: true, completion: nil)
  }

  
}
