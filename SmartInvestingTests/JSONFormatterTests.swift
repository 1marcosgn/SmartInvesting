//
//  JSONFormatterTests.swift
//  SmartInvestingTests
//
//  Created by Marcos Garcia on 1/5/19.
//  Copyright © 2019 Marcos Garcia. All rights reserved.
//

import XCTest

class JSONFormatterTests: XCTestCase {

    func test_parseWith_File_Name_Should_Return_Valid_Dictionary() {
        /// Given
        let sut: [String: Any]?
        //let formatter = JSONFormatter()
        
        /// When
        sut = JSONFormatter.parseWith(file: "achievements")
        
        /// Then
        XCTAssertNotNil(sut, "Dictionary from Json should not be nil")
        XCTAssertTrue((sut?["success"] as? Bool)!, "This should be true")
        XCTAssertEqual(sut?["status"] as? Int, 200, "Valid response should return code: '200'")
        XCTAssertNotNil(sut?["overview"], "The overview content should not be nil")
        XCTAssertNotNil(sut?["achievements"], "Achievements should not be nil")
        
        let achievements = sut?["achievements"] as? [[String: Any]]
        XCTAssertEqual(achievements?.count, 3, "Object should contain 3 Achievements")
    }

}
