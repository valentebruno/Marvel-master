//
//  CharacterCatalogBuilder.swift
//  marvelapp
//
//  Created by Bruno Valente on 28/04/2020.
//  Copyright © 2020 Bruno Valente. All rights reserved.
//

import Foundation

class CharacterCatalogBuilder {
    
    private weak var router: CharacterCatalogRouterable?
    
    init(router: CharacterCatalogRouterable) {
        self.router = router
    }
    
    func build() -> CharacterCatalogViewController {
        let logic = CharacterCatalogLogic(router: router)
        let viewModel = CharacterCatalogViewModel(logic: logic)
        return CharacterCatalogViewController(viewModel: viewModel)
    }
    
}
