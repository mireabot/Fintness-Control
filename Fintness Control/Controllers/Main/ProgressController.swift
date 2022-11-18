//
//  ProgressController.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

class ProgressController: RootViewController {
    //MARK: - Properties
    
    private let performanceView = RootInfoView(with: "Daily Performance", buttonTitle: "Last 7 Days")
    
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

extension ProgressController {
    override func addView() {
        super.addView()
        
        view.addActivatedView(performanceView)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            performanceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            performanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            performanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            performanceView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    override func configure() {
        super.configure()
    }
}
