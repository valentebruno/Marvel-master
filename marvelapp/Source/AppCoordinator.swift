//
//  AppCoordinator.swift
//  marvelapp
//
//  Created by Bruno Valente on 28/04/2020.
//  Copyright © 2020 Bruno Valente. All rights reserved.
//

import Foundation

class AppCoordinator: Coordinator {
    
    private lazy var catalogCoordinator: CatalogCoordinator = {
        let coordinator = CatalogCoordinator()
        return coordinator
    }()
    
    override init() {
        super.init()
        super.viewController = catalogCoordinator.rootViewController
    }
    
    func start() {
        catalogCoordinator.start()
    }
    
    func stop() {
        
    }
}
