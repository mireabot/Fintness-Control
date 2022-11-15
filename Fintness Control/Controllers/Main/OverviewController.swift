//
//  OverviewController.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

class OverviewController: RootViewController {
    //MARK: - Properties
    
    private let navBar = OverviewNavBar()
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.tabBarItem.title = Resourses.Strings.overview
    }
    
    //MARK: - Helpers
    
}

extension OverviewController {
    
    override func addView() {
        super.addView()
        view.addSubview(navBar)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])
    }
    
    override func configure() {
        super.configure()
        navigationController?.navigationBar.isHidden = true
        navBar.translatesAutoresizingMaskIntoConstraints = false
    }
}
