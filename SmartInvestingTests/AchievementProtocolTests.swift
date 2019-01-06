//
//  AchievementProtocolTests.swift
//  SmartInvestingTests
//
//  Created by Marcos Garcia on 1/5/19.
//  Copyright © 2019 Marcos Garcia. All rights reserved.
//

import XCTest

class AchievementProtocolTests: XCTestCase {

    func test_ClassThatConforms_AchievementProtocol_ShouldHave_Valid_Data() {
        /// Given
        var sut: MockAchievement?
        let testUrl = URL(string: "https://cdn.zeplin.io/5a5f7e1b4f9f24b874e0f19f/screens/C850B103-B8C5-4518-8631-168BB42FFBBD.png")
        
        /// When
        sut = MockAchievement(id: 4, level: "1", progress: 10, total: 50, bg_image_url: testUrl!, accessible: true)
        
        /// Then
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

/// Mock class that conforms 'AchievementProtocol'
class MockAchievement: AchievementProtocol {
    var id: Int
    var level: String
    var progress: Int
    var total: Int
    var bg_image_url: URL?
    var accessible: Bool
    
    init(id: Int, level: String, progress: Int, total: Int, bg_image_url: URL, accessible: Bool) {
        self.id = id
        self.level = level
        self.progress = progress
        self.total = total
        self.bg_image_url = bg_image_url
        self.accessible = accessible
    }
}
