//
//  StoryboardLiterals.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/04/08.
//

import UIKit

/**

  - Description:
          enum형태로 Storybaords 값을 안전하게 가져오기 위해 사용합니다.
          스토리보드를 추가할때마다 case 과 값을 추가하면 됩니다!
*/
enum Storyboards: String {
  case base = "Base"
}

extension UIStoryboard{
  static func list(_ name : Storyboards) -> UIStoryboard{
    return UIStoryboard(name: name.rawValue, bundle: nil)
  }
}

