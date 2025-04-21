//
//  NativeStuff.swift
//  ExpoSwiftBareboneTest
//
//  Created by Aryan Rogye on 4/21/25.
//

import Foundation
import UIKit
import SwiftUI
import React

@objc(NativeStuff)
class NativeStuff: NSObject {
  @objc
  func helloWorld(_ resolve: @escaping RCTPromiseResolveBlock, reject: @escaping RCTPromiseRejectBlock) {
    resolve("Hello from Swift!")
  }
  
  @objc
  func openMyModalWithContent(_ content: NSString) {
    DispatchQueue.main.async {
      let modalView = ModalView(message: String(content))
      let hostingController = UIHostingController(rootView: modalView)
      
      if let rootVC = UIApplication.shared.connectedScenes
        .compactMap({ ($0 as? UIWindowScene)?.keyWindow })
        .first?.rootViewController {
        rootVC.present(hostingController, animated: true, completion: nil)
      }
    }
  }
}
