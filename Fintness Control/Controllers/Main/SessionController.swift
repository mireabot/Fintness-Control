//
//  SessionController.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

class SessionController: RootViewController {
    //MARK: - Properties
    
    private let timerView : RootInfoView = {
        let view = RootInfoView(with: "Test", buttonTitle: "Test button".uppercased())
        
        return view
    }()
    
    //MARK: - Lifecycle
    
    //MARK: - Helpers
}

extension SessionController {
    override func addView() {
        super.addView()
        
        view.addActivatedView(timerView)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    override func configure() {
        super.configure()
        
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resourses.Strings.session
        
        addNavButton(at: .left, with: "Pause")
        addNavButton(at: .right, with: "Finish")
    }
}
