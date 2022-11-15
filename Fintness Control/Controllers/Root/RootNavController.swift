//
//  RootNavController.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

final class RootNavController: UINavigationController {
    //MARK: - Properties
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    //MARK: - Helpers
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [.foregroundColor: UIColor.darkGray,
                                                                .font: Resourses.Fonts.regular(with: 17)]
        
        navigationBar.createBottomLine(with: .line!, height: 1)
    }
}

