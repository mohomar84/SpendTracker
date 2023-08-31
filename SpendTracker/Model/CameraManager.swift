//
//  CameraManager.swift
//  SpendTracker
//
//  Created by Mohamed Omar on 30/08/2023.
//

import AVFoundation
// 1
class CameraManager: ObservableObject {
  // 2
  enum Status {
    case unconfigured
    case configured
    case unauthorized
    case failed
  }
  // 3
  static let shared = CameraManager()
  // 4
  private init() {
    configure()
  }
  // 5
  private func configure() {
  }
}
