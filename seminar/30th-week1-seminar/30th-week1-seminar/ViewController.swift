//
//  ViewController.swift
//  30th-week1-seminar
//
//  Created by 안현주 on 2022/04/02.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
  
  @IBOutlet weak var helloImageView: UIImageView!
  @IBOutlet weak var messageLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setUI()
  }
  
  func setUI(){
    messageLabel.text = "행복해.. 선배덜1..?"
  }
  
  @IBAction func doneButtonDidTap(_ sender: Any) {
    messageLabel.text = "은주야 사랑행"
    messageLabel.textColor = .yellow
    messageLabel.sizeToFit()
    AudioServicesPlayAlertSound(SystemSoundID(1307))
  }
  
  
  
}

