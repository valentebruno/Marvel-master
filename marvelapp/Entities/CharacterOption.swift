//
//  CharacterOptions.swift
//  marvelapp
//
//  Created by Bruno Valente on 28/04/2020.
//  Copyright © 2020 Bruno Valente. All rights reserved.
//

import Foundation

enum CharacterOption: CaseIterable {
    case favorite
    case unfavorite
}

extension CharacterOption {
    
    var title: String {
        switch self {
        case .favorite:
            return "Favorite"
        case .unfavorite:
            return "Remove from favorites"
        }
    }
    
}
