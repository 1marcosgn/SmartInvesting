//
//  Header.swift
//  SmartInvesting
//
//  Created by Marcos Garcia on 1/5/19.
//  Copyright © 2019 Marcos Garcia. All rights reserved.
//

import UIKit

class Header {
    private let information: [String: Any]
    
    init(_ information:[String: Any]) {
        self.information = information
    }
    
    func getTitle() -> String? {
        let overview = self.information[Constants.overview] as? [String: String]
        let title = overview?[Constants.title]
        return title
    }
}
