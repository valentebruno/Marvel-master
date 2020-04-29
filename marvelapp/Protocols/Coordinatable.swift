//
//  Coordinatable.swift
//  marvelapp
//
//  Created by Bruno Valente on 28/04/2020.
//  Copyright © 2020 Bruno Valente. All rights reserved.
//

import UIKit

protocol Coordinatable: Reusable {
    
    var childCoordinators: [Coordinatable] { set get }
    
    var rootViewController: UIViewController { get }
    
    func start()
    func stop()
    
    func retriveCoordinatable(with identifier: String) -> Coordinatable?
    func holdCoordinatable(_ coordinatable: Coordinatable)
    func releaseCoordinatable(with identifier: String)
}

extension Coordinatable where Self: Coordinator {
    
    func retriveCoordinatable(with identifier: String) -> Coordinatable? {
        
        guard let index = indexForCoordinator(with: identifier) else {
            return nil
        }
        
        return childCoordinators[index]
    }
    
    func holdCoordinatable(_ coordinatable: Coordinatable) {
        childCoordinators.append(coordinatable)
    }
    
    func releaseCoordinatable(with identifier: String) {
        if let index = indexForCoordinator(with: identifier) {
            childCoordinators.remove(at: index)
        }
    }
    
    private func indexForCoordinator(with identifier: String) -> Int? {
        return childCoordinators.firstIndex(where: { type(of: $0).reuseIdentifier == identifier })
    }
}

extension Coordinatable where Self: NavigationCoordinator {
    
    func retriveCoordinatable(with identifier: String) -> Coordinatable? {
        
        guard let index = indexForCoordinator(with: identifier) else {
            return nil
        }
        
        return childCoordinators[index]
    }
    
    func holdCoordinatable(_ coordinatable: Coordinatable) {
        childCoordinators.append(coordinatable)
    }
    
    func releaseCoordinatable(with identifier: String) {
        if let index = indexForCoordinator(with: identifier) {
            childCoordinators.remove(at: index)
        }
    }
    
    private func indexForCoordinator(with identifier: String) -> Int? {
        return childCoordinators.firstIndex(where: { type(of: $0).reuseIdentifier == identifier })
    }
}
