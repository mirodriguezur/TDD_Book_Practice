//
//  RootViewController+Tests.swift
//  FitNessTests
//
//  Created by Michael Alexander Rodriguez Urbina on 8/11/21.
//  Copyright © 2021 Razeware. All rights reserved.
//

import UIKit
@testable import FitNess

extension RootViewController {
  var stepController: StepCountController {
    return children.first { $0 is StepCountController }
      as! StepCountController
  }
}

