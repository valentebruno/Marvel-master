//
//  MessageTableViewCell.swift
//  marvelapp
//
//  Created by Bruno Valente on 28/04/2020.
//  Copyright © 2020 Bruno Valente. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
}

extension MessageTableViewCell: ViewConfigurable {
    
    typealias ViewModel = MessageTableViewCellDTO
    
    func configure(with viewModel: MessageTableViewCellDTO?) {
        titleLabel.text = viewModel?.title
    }
    
}
