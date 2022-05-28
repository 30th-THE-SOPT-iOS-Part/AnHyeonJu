//
//  LoginMockModel.swift
//  30th-week7-seminar
//
//  Created by 안현주 on 2022/05/28.
//

import Foundation

struct LoginMockModel : Codable {
  let status: Int
  let success: Bool
  let message : String
  let data : LoginData?
}

struct LoginData: Codable {
  let name, email : String
}
