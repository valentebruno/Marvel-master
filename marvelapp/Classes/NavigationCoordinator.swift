//
//  NavigationCoordinator.swift
//  marvelapp
//
//  Created by Bruno Valente on 28/04/2020.
//  Copyright © 2020 Bruno Valente. All rights reserved.
//

import UIKit

class NavigationCoordinator: Coordinatable {    
    var childCoordinators = [Coordinatable]()
    var viewController = UINavigationController()
}

extension NavigationCoordinator: AlertControllerPresentable {}

extension Coordinatable where Self: NavigationCoordinator {
    
    var rootViewController: UIViewController {
        return viewController
    }
    
    func start() {
        fatalError("Implement in child")
    }
    
    func stop() {
        fatalError("Implement in child")
    }
}
