//
//  ActionTableViewCell.swift
//  marvelapp
//
//  Created by Bruno Valente on 28/04/2020.
//  Copyright © 2020 Bruno Valente. All rights reserved.
//

import UIKit

class ActionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var actionTitle: UILabel!
    
}


extension ActionTableViewCell: ViewConfigurable {
    
    typealias ViewModel = ActionTableViewCellDTO
    
    func configure(with viewModel: ActionTableViewCellDTO?) {
        actionTitle.text = viewModel?.actionTitle
    }
    
}

