//
//  ViewController.swift
//  marvelapp
//
//  Created by Bruno Valente on 28/04/2020.
//  Copyright © 2020 Bruno Valente. All rights reserved.
//



import Foundation
import UIKit

class ViewController<ViewType: UIView>: UIViewController, ViewConfiguration {
    
    var customView: ViewType {
        return view as! ViewType
    }
    
    override func loadView() {
        let newView: ViewType = makeView(with: ViewType.self)
        newView.backgroundColor = .black
        view = newView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildViewHierarchy()
        setupConstraints()
        configureViews()
    }
    
    private func makeView<ViewType: UIView>(with type: ViewType.Type) -> ViewType {
        return ViewType()
    }
    
    func buildViewHierarchy() {}
    func setupConstraints() {}
    func configureViews() {}
}


