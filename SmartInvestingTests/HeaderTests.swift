//
//  HeaderTests.swift
//  SmartInvestingTests
//
//  Created by Marcos Garcia on 1/5/19.
//  Copyright © 2019 Marcos Garcia. All rights reserved.
//

import XCTest

class HeaderTests: XCTestCase {

    func test_Header_Initialized_With_Correct_Information_ShouldHave_Valid_Title() {
        /// Given
        let sut: Header
        let mockInformation = getMockInformation()
        
        /// When
        sut = Header(mockInformation)
        
        /// Then
        XCTAssertNotNil(sut, "Header object should not be nil")
        XCTAssertNotNil(sut.getTitle(), "Title should not be nil")
        XCTAssertEqual(sut.getTitle(), "Smart Investing", "Title should match")
    }
}

extension HeaderTests {
    /// Returns a dictionary with a mock title
    func getMockInformation() -> [String: Any] {
        var container = [String: Any]()
        var information = [String: Any]()
        
        information["title"] = "Smart Investing"
        container["overview"] = information
        
        return container
    }
}
