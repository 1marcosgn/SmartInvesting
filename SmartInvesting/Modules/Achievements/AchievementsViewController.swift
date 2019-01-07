//
//  AchievementsViewController.swift
//  SmartInvesting
//
//  Created Marcos Garcia on 1/5/19.
//  Copyright © 2019 Marcos Garcia. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit
import SDWebImage

class AchievementsViewController: UITableViewController, AchievementsViewProtocol {

	var presenter: AchievementsPresenterProtocol?
    var achievements = [Achievement]()

	override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = AchievementsPresenter(interface: self,
                                          interactor: AchievementsInteractor(),
                                          router: AchievementsRouter())
        
        configureHeader()
        configureTableView()
        setUpAchievementsTable()
    }
}

//MARK: Viper Methods -
extension AchievementsViewController {
    func setUpAchievementsTable() {
        guard let fetchedAchievements = presenter?.retrieveAchievements() else {
            return
        }
        
        achievements = fetchedAchievements
    }
}

//MARK: TableView Delegate Methods -
extension AchievementsViewController {
    
    func configureTableView() {
        let nib = UINib(nibName: "AchievementCell", bundle: .main)
        tableView.register(nib, forCellReuseIdentifier: "achievementCell")
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return achievements.count
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "achievementCell", for: indexPath) as! AchievementCell
        
        let achievement = achievements[indexPath.item]
        
        cell.activity.startAnimating()
        cell.activity.hidesWhenStopped = true
        
        cell.bgImage.sd_setImage(with: achievement.bg_image_url,
                                 placeholderImage: nil,
                                 options: .highPriority) { (image, error, cache, url) in
                                    cell.activity.stopAnimating()
        }
        
        cell.level.text = achievement.level
        cell.progressLevel.text = String(achievement.progress) + "pts" //localize this string
        cell.totalLevel.text = String(achievement.total) + "pts" //localize this string
        
        let theProgress: Float = Float(achievement.progress) / Float(achievement.total)
        cell.updateProgressBarWith(theProgress)
        
        if !achievement.accessible {
            cell.disableUI()
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240.0
    }
}

extension AchievementsViewController {
    func configureHeader() {
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = Colors.stashPurple
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

extension UINavigationController {
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? .default
    }
}