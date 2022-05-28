
import Foundation

// MARK: - SignUpResponsData
struct SignUpResponseData: Codable {
  let status: Int
  let success: Bool?
  let message: String
  let data: SignUpResultData? // 실패할 경우를 고려해서 옵셔널 타입
}

struct SignUpResultData: Codable {
  let id: Int
}

