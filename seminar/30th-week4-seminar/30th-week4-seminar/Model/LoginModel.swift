//
//  LoginModel.swift
//  30th-week4-seminar
//
//  Created by 안현주 on 2022/05/07.
//

import Foundation

struct LoginResponse: Codable {
    let status: Int
    let success: Bool?
    let message: String
    let data: LoginData?
}

struct LoginData: Codable {
    let name: String
    let email: String
}
