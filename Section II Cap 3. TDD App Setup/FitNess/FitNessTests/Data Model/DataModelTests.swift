//
//  DataModelTests.swift
//  FitNessTests
//
//  Created by Michael Alexander Rodriguez Urbina on 5/11/21.
//  Copyright © 2021 Razeware. All rights reserved.
//

import XCTest
@testable import FitNess

class DataModelTests: XCTestCase {
  
  var sut: DataModel!

    override func setUpWithError() throws {
      super.setUp()
      sut = DataModel()
    }

    override func tearDownWithError() throws {
      sut = nil
      super.tearDown()
    }

  // MARK: - Goal
  func testModel_whenStarted_goalIsNotReached() {
    XCTAssertFalse(sut.goalReached,
        "goalReached should be false when the model is created")
  }

}
