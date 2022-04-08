//
//  UIViewController +.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/04/08.
//

import UIKit

extension UIViewController {
  func hideKeyboard() {
    let tap: UITapGestureRecognizer = UITapGestureRecognizer (target: self,
                                                              action: #selector(UIViewController.dismissKeyboard))
    view.addGestureRecognizer(tap)
  }
  
  @objc func dismissKeyboard() {
    view.endEditing(true)
  }
}
