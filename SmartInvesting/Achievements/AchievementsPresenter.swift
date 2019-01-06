//
//  AchievementsPresenter.swift
//  SmartInvesting
//
//  Created Marcos Garcia on 1/5/19.
//  Copyright © 2019 Marcos Garcia. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class AchievementsPresenter: AchievementsPresenterProtocol, AchievementsInteractorOutputProtocol {

    weak private var view: AchievementsViewProtocol?
    var interactor: AchievementsInteractorInputProtocol?
    private let router: AchievementsWireframeProtocol

    init(interface: AchievementsViewProtocol, interactor: AchievementsInteractorInputProtocol?, router: AchievementsWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
    
    func retrieveAchievements() -> [Achievement]? {
        return interactor?.getAchievements()
    }
}
