//
//  DataModel.swift
//  FitNess
//
//  Created by Michael Alexander Rodriguez Urbina on 5/11/21.
//  Copyright © 2021 Razeware. All rights reserved.
//

import Foundation

class DataModel {
  var goal: Int?
  var steps: Int = 0
  var goalReached: Bool {         //Si el usuario logra mas que el objetivo, true
    if let goal = goal,
      steps >= goal {
        return true
    }
    return false
  }


  
}
