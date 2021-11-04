//
//  AppModelTest.swift
//  FitNessTests
//
//  Created by Michael Alexander Rodriguez Urbina on 4/11/21.
//  Copyright © 2021 Razeware. All rights reserved.
//

import XCTest
import FitNess

class AppModelTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
  
  func testAppModel_whenInitialized_isInNotStartedState() {
    let sut = AppModel()
    let initialState = sut.appState        //variable de clase
    XCTAssertEqual(initialState, AppState.notStarted)
  }


}
