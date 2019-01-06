//
//  AchievementsRouterTests.swift
//  SmartInvestingTests
//
//  Created by Marcos Garcia on 1/6/19.
//  Copyright © 2019 Marcos Garcia. All rights reserved.
//

import XCTest

class AchievementsRouterTests: XCTestCase {

    func test_createModule_Should_Return_Valid_Initial_Module() {
        
        /// Given
        let sut: UIViewController
        
        /// When
        sut = AchievementsRouter.createModule()
        
        /// Then
        XCTAssertNotNil(sut, "Created Module should not be nil")
        XCTAssertEqual(sut.nibName, "AchievementsViewController", "Nib name should match")
    }
}
