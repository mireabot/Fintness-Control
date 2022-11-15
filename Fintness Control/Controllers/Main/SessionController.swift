//
//  SessionController.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

class SessionController: RootViewController {
    //MARK: - Properties
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resourses.Strings.session
        
        addNavButton(at: .left, with: "Pause")
        addNavButton(at: .right, with: "Finish")
    }
    
    //MARK: - Helpers
}

