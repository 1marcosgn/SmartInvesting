//
//  AchievementsFactoryTests.swift
//  SmartInvestingTests
//
//  Created by Marcos Garcia on 1/5/19.
//  Copyright © 2019 Marcos Garcia. All rights reserved.
//

import XCTest

class AchievementsFactoryTests: XCTestCase {

    func test_Achievements_Factory_Should_Have_A_Single_Instance() {
        /// Given
        let sut: AchievementsFactory
        
        /// When
        sut = AchievementsFactory.shared()
        let secondFactory = AchievementsFactory.shared()
        
        /// Then
        XCTAssertNotNil(sut, "Factory instance should not be nil")
        XCTAssertEqual(sut, secondFactory, "Both instances should be the same")
    }
    
    func test_Factory_ShouldBeAbleTo_Create_Single_Achievement() {
        /// Given
        var sut = [Achievement]()
        let factory = AchievementsFactory.shared()
        let mockDictionary = AchievementTests.getMockDictionary()
        
        /// When
        sut = factory.makeAchievements(achievements: [mockDictionary])!
        
        /// Then
        XCTAssertNotNil(sut, "Array with achievements should not be nil")
        XCTAssertEqual(sut.count, 1, "Only one Achievement should be created")
    }

    func test_Factory_ShouldBeAbleTo_Create_Multiple_Achievements() {
        /// Given
        var sut = [Achievement]()
        let factory = AchievementsFactory.shared()
        let mockArray = [AchievementTests.getMockDictionary(), AchievementTests.getMockDictionary(), AchievementTests.getMockDictionary()]
        
        /// When
        sut = factory.makeAchievements(achievements: mockArray)!
        
        /// Then
        XCTAssertNotNil(sut, "Array with achievements should not be nil")
        XCTAssertEqual(sut.count, 3, "Only one Achievement should be created")
    }
    
    func test_Factory_ShouldBeAbleTo_Create_Valid_Achievements_From_JSON_Object() {
        
        /// Given
        var sut = [Achievement]()
        let factory = AchievementsFactory.shared()
        let jsonObject = JSONFormatter.parseWith(file: "achievements")
        
        let array = jsonObject?["achievements"] as? [[String : Any]]
        
        /// When
        sut = factory.makeAchievements(achievements: array!)!
        
        /// Then
        XCTAssertNotNil(sut, "Object with Achievements should not be nil")
        XCTAssertEqual(sut.count, 3, "Array should contain 3 elemenets")
    }
}
