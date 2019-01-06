//
//  Achievement.swift
//  SmartInvesting
//
//  Created by Marcos Garcia on 1/5/19.
//  Copyright © 2019 Marcos Garcia. All rights reserved.
//

import UIKit

class Achievement: AchievementProtocol {
    var id: Int
    var level: String
    var progress: Int
    var total: Int
    var bg_image_url: URL?
    var accessible: Bool
    
    /// Initializer that receives as a parameter a Dictionary with information required to build an Achievement
    init(_ information: [String: Any]) {
        self.id = information["id"] as? Int ?? 0
        self.level = information["level"] as? String ?? ""
        self.progress = information["progress"] as? Int ?? 0
        self.total = information["total"] as? Int ?? 0
        self.bg_image_url = information["bg_image_url"] as? URL
        self.accessible = information["accessible"] as? Bool ?? false
    }
    
    /// Initializer that receives as a parameter each property to build an Achievement
    init(id: Int, level: String, progress: Int, total: Int, bg_image_url: URL, accessible: Bool) {
        self.id = id
        self.level = level
        self.progress = progress
        self.total = total
        self.bg_image_url = bg_image_url
        self.accessible = accessible
    }
}
