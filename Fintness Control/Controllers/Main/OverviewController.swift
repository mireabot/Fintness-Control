//
//  OverviewController.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

class OverviewController: RootViewController {
    //MARK: - Properties
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.tabBarItem.title = Resourses.Strings.overview
    }
    
    //MARK: - Helpers
}
