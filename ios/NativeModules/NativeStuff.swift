//
//  NativeStuff.swift
//  ExpoSwiftBareboneTest
//
//  Created by Aryan Rogye on 4/21/25.
//

import Foundation
import React

@objc(NativeStuff)
class NativeStuff: NSObject {
  @objc
  func helloWorld(_ resolve: @escaping RCTPromiseResolveBlock, reject: @escaping RCTPromiseRejectBlock) {
    resolve("Hello from Swift!")
  }
}
