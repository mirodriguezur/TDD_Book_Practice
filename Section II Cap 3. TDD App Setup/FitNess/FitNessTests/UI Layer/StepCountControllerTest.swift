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
  
  func testController_whenStartTapped_appIsInProgress() {
    // when
    sut.startStopPause(nil)

    // then
    let state = AppModel.instance.appState         //Debo creear una instancia
    XCTAssertEqual(state, AppState.inProgress)    //State se actualiza cuando ocurre el when.
  }
  
  func testController_whenStartTapped_buttonLabelIsPause() {
    // when
    sut.startStopPause(nil)

    // then
    let text = sut.startButton.title(for: .normal)
    XCTAssertEqual(text, AppState.inProgress.nextStateButtonLabel) //Fuerzo condicion inProgress para comparar con text.
  }


}
