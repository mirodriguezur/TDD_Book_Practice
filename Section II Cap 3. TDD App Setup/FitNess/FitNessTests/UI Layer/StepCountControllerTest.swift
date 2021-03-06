//
//  StepCountControllerTest.swift
//  FitNessTests
//
//  Created by Michael Alexander Rodriguez Urbina on 4/11/21.
//  Copyright © 2021 Razeware. All rights reserved.
//

import XCTest
@testable import FitNess       // Open, public, e internal estarian disponibles para los casos de prueba

class StepCountControllerTest: XCTestCase {

  var sut: StepCountController!
  
    override func setUpWithError() throws {
      super.setUp()
      sut = StepCountController()
    }

    override func tearDownWithError() throws {
      sut = nil
      super.tearDown()
    }
  
  // MARK: - Initial State

  func testController_whenCreated_buttonLabelIsStart() {
    // given
    sut.viewDidLoad()
    let text = sut.startButton.title(for: .normal)
    
    XCTAssertEqual(text, AppState.notStarted.nextStateButtonLabel)
  }

  // MARK: - In Progress
  
  func testController_whenStartTapped_appIsInProgress() {
    whenStartStopPauseCalled()

    // then
    let state = AppModel.instance.appState         //Debo creear una instancia
    XCTAssertEqual(state, AppState.inProgress)    //State se actualiza cuando ocurre el when.
  }
  
  func testController_whenStartTapped_buttonLabelIsPause() {
    // when
    whenStartStopPauseCalled()

    // then
    let text = sut.startButton.title(for: .normal)
    XCTAssertEqual(text, AppState.inProgress.nextStateButtonLabel) //Fuerzo condicion inProgress para comparar con text.
  }

// Helpers
  
  fileprivate func whenStartStopPauseCalled() {
    // when
    sut.startStopPause(nil)
  }
}
