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
  
  var sut: AppModel!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
      super.setUp()
      sut = AppModel()
      
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
      sut = nil
      super.tearDown()
    }
  
  func testAppModel_whenInitialized_isInNotStartedState() {
    let initialState = sut.appState        //variable de clase
    XCTAssertEqual(initialState, AppState.notStarted)
  }
  
  func testAppModel_whenStarted_isInInProgressState() {
    // 2 when started
    sut.start()               //Agregar esta funcion en AppModel

    // 3 then it is in inProgress
    let observedState = sut.appState
    XCTAssertEqual(observedState, AppState.inProgress)
  }



}
