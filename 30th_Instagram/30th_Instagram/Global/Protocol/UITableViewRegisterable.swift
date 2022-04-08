//
//  UITableViewRegisterable.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/04/08.
//

import UIKit

protocol UITableViewRegisterable {
    static func register(target: UITableView)
}

extension UITableViewRegisterable where Self: UITableViewCell {
    static func register(target: UITableView) {
        target.register(Self.self, forCellReuseIdentifier: Self.className)
    }
}
