//
//  ViewControllers.swift
//  FitNessTests
//
//  Created by Michael Alexander Rodriguez Urbina on 8/11/21.
//  Copyright © 2021 Razeware. All rights reserved.
//

import UIKit
@testable import FitNess

func loadRootViewController() -> RootViewController {
  let window = UIApplication.shared.windows[0]
  return window.rootViewController as! RootViewController
}

