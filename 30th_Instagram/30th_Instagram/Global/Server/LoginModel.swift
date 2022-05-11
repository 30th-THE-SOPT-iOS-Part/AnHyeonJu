
import Foundation

// MARK: - LoginResponsData
struct LoginResponseData: Codable {
  let status: Int
  let success: Bool
  let message: String
  let data: LoginData?
}

struct LoginData: Codable {
  let name,email: String
}
