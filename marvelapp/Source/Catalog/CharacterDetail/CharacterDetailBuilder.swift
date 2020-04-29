//
//  CharacterDetailBuilder.swift
//  marvelapp
//
//  Created by Bruno Valente on 28/04/2020.
//  Copyright © 2020 Bruno Valente. All rights reserved.
//
import Foundation

class CharacterDetailBuilder {
    
    private weak var router: CharacterDetailRouterable?
    
    var character: Character
    
    init(router: CharacterDetailRouterable, character: Character) {
        self.router = router
        self.character = character
    }
    
    func build() -> CharacterDetailViewController {
        let logic = CharacterDetailLogic(router: router)
        let viewModel = CharacterDetailViewModel(logic: logic, character: character)
        return CharacterDetailViewController(viewModel: viewModel)
    }
    
}
