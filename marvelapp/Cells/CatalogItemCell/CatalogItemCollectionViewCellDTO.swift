//
//  CatalogItemCollectionViewCellDTO.swift
//  marvelapp
//
//  Created by Bruno Valente on 28/04/2020.
//  Copyright © 2020 Bruno Valente. All rights reserved.
//

import Foundation

struct CatalogItemCollectionViewCellDTO {
    let title: String?
    let imageURL: URL?
    let favorited: Bool
}

extension CatalogItemCollectionViewCellDTO {
    init(character: Character, favorited: Bool) {
        self.title = character.name
        self.imageURL = character.thumbnail?.url
        self.favorited = favorited
    }
}
