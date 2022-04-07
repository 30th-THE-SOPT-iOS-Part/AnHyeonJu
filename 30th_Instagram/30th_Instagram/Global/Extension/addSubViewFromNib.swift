//
//  addSubViewFromNib.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/04/08.
//

import UIKit
extension UIView{
  public func addSubviewFromNib(view : UIView){
    let view = Bundle.main.loadNibNamed(view.className, owner: self, options: nil)?.first as! UIView
    view.frame = bounds
    view.clipsToBounds = true
    addSubview(view)
  }
}

class XibView : UIView{
  override init(frame: CGRect) {
    super.init(frame: frame)
    addSubviewFromNib(view: self)
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    addSubviewFromNib(view: self)
  }
}
