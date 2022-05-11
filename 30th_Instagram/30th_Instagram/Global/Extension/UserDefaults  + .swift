//
//  UserDefaults  + .swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/05/11.
//

import Foundation
import UIKit

extension UserDefaults {
    // UserDefaults key value가 많아지면 관리하기 어려워지므로 enum 'Keys'로 묶어 관리
    enum Keys {
        static var loginUserName = "loginUserName"
    }
}
