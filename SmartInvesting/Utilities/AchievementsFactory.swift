//
//  AchievementsFactory.swift
//  SmartInvesting
//
//  Created by Marcos Garcia on 1/5/19.
//  Copyright © 2019 Marcos Garcia. All rights reserved.
//

import UIKit

class AchievementsFactory {
    
    private static var sharedAchievementsFactory = AchievementsFactory()
    
    /// Single instance of AchievementsFactory
    class func shared() -> AchievementsFactory {
        return sharedAchievementsFactory
    }
    
    /**
     Creates and returns Achievements based on a Dictionary with the achievements information
     - parameter achievements: Array of Dictionaries with information required to build an Achievement
     - returns: Array of Achievements
     */
    public func makeAchievements(achievements: [[String: Any]]) -> [Achievement]? {
        var achievementsArray = [Achievement]()
        
        for achievement in achievements {
            achievementsArray.append(Achievement(achievement))
        }
        
        return achievementsArray
    }
}

extension AchievementsFactory: Equatable {
    static func == (lhs: AchievementsFactory, rhs: AchievementsFactory) -> Bool {
        return true
    }
}
