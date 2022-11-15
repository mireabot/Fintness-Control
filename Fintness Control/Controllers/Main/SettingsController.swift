//
//  SettingsController.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

class SettingsController: RootViewController {
    //MARK: - Properties
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        navigationController?.tabBarItem.title = Resourses.Strings.settings
    }
    
    //MARK: - Helpers
}


