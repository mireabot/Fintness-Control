//
//  RootViewController.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

class RootViewController: UIViewController {
    //MARK: - Properties
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    //MARK: - Helpers
    
}

@objc extension RootViewController {
    func addView() {}
    func layout() {}
    func configure() {
        view.backgroundColor = .background
    }
    
    func leftTap() {}
    func rightTap() {}
}

extension RootViewController {
    func addNavButton(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.primary, for: .normal)
        button.setTitleColor(.secondary, for: .disabled)
        button.titleLabel?.font = Resourses.Fonts.regular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(leftTap), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(rightTap), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
