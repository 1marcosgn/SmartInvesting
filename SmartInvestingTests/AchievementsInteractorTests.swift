//
//  AchievementsInteractorTests.swift
//  SmartInvestingTests
//
//  Created by Marcos Garcia on 1/6/19.
//  Copyright © 2019 Marcos Garcia. All rights reserved.
//

import XCTest

class AchievementsInteractorTests: XCTestCase {

    func test_getAchievements_ShouldReturn_Valid_Achievements_Array() {
        /// Given
        let sut: AchievementsInteractor?
        
        /// When
        sut = AchievementsInteractor()
        
        /// Then
        XCTAssertNotNil(sut?.getAchievements(), "Achievements should not be nil")
        XCTAssertEqual(sut?.getAchievements()?.count, 3, "The number of achievements should match")
    }
    
    func test_getAchievements_ShouldReturn_Valid_Achievement() {
        /// Given
        var sut: Achievement?
        let interactor = AchievementsInteractor()
        let testUrl = URL(string: "https://cdn.zeplin.io/5a5f7e1b4f9f24b874e0f19f/screens/C850B103-B8C5-4518-8631-168BB42FFBBD.png")
        
        /// When
        sut = interactor.getAchievements()?.first
        
        /// Then
        XCTAssertNotNil(sut, "Achievement should not be nil")
        XCTAssertNotNil(sut?.id, "ID should not be nil")
        XCTAssertEqual(sut?.id, 4, "ID should match with the value provided")
        
        XCTAssertNotNil(sut?.level, "level should not be nil")
        XCTAssertEqual(sut?.level, "1", "level should match with the value provided")
        
        XCTAssertNotNil(sut?.progress, "progress should not be nil")
        XCTAssertEqual(sut?.progress, 10, "progress should match with the value provided")
        
        XCTAssertNotNil(sut?.total, "total should not be nil")
        XCTAssertEqual(sut?.total, 50, "total should match with the value provided")
        
        XCTAssertNotNil(sut?.bg_image_url, "bg_image_url should not be nil")
        XCTAssertEqual(sut?.bg_image_url, testUrl, "bg_image_url should match with the value provided")
        
        XCTAssertNotNil(sut?.accessible, "accessible should not be nil")
        XCTAssertTrue((sut?.accessible)!, "Achievement should be accessible")
    }
    
}
