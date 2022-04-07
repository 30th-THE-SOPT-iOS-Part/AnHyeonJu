//
//  successCatch + Result.swift
//  30th_Instagram
//
//  Created by 안현주 on 2022/04/08.
//

import Foundation

extension Result {
  @discardableResult
  func success(_ successHandler: (Success) -> Void) -> Result<Success, Failure> {
    if case .success(let value) = self {
      successHandler(value)
    }
    return self
  }
  
  @discardableResult
  func `catch`(_ failureHandler: (Failure) -> Void) -> Result<Success, Failure> {
    if case .failure(let error) = self {
      failureHandler(error)
    }
    return self
  }
}
