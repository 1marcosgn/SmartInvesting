//
//  AchievementCell.swift
//  SmartInvesting
//
//  Created by Marcos Garcia on 1/6/19.
//  Copyright © 2019 Marcos Garcia. All rights reserved.
//

import UIKit

class AchievementCell: UITableViewCell {
    
    @IBOutlet weak var mainContainer: UIStackView!
    @IBOutlet weak var containerLevel: UIView!
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var level: UILabel!
    
    @IBOutlet weak var progressIndicator: UIProgressView!
    @IBOutlet weak var progressLevel: UILabel!
    @IBOutlet weak var totalLevel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpCellUI()
    }
    
    func setUpCellUI() {
        //Rounded corners for Background image
        bgImage?.layer.cornerRadius = 8.0
        bgImage?.clipsToBounds = true
        
        // Make circular level container
        containerLevel.layer.cornerRadius = containerLevel.frame.size.width / 2
        containerLevel.clipsToBounds = true
    }
    
    func updateProgressBarWith(_ points: Float) {
        progressIndicator.setProgress(points, animated: true)
    }
    
    /// if 'accessible' is false then disable all the elements and change the 'alpha' properties
    func disableUI() {
        self.isUserInteractionEnabled = false
        let hiddenAlpha: CGFloat = 0.4
        bgImage.alpha = hiddenAlpha
        mainContainer.alpha = hiddenAlpha
    }
}
