//
//  ProgressController.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

class ProgressController: RootViewController {
    //MARK: - Properties
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Workout Progress"
        navigationController?.tabBarItem.title = Resourses.Strings.progress
        
        addNavButton(at: .left, with: "Export")
        addNavButton(at: .right, with: "Details")
    }
    
    //MARK: - Helpers
}


