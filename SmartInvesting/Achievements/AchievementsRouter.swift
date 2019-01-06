//
//  AchievementsRouter.swift
//  SmartInvesting
//
//  Created Marcos Garcia on 1/5/19.
//  Copyright © 2019 Marcos Garcia. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class AchievementsRouter: AchievementsWireframeProtocol {

    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let view = AchievementsViewController(nibName: "AchievementsViewController", bundle: Bundle.main)
        let interactor = AchievementsInteractor()
        let router = AchievementsRouter()
        let presenter = AchievementsPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
}
