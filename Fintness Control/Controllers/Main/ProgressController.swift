//
//  ProgressController.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

class ProgressController: RootViewController {
    //MARK: - Properties
    
    private let performanceView = SessionStepsView(with: "Daily Performance".uppercased(), buttonTitle: "Last 7 Days".uppercased())
    
    private let monthPerformanceView = RootInfoView(with: "Monthly performance".uppercased(), buttonTitle: "Last 10 months".uppercased())
    
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
        view.addActivatedView(monthPerformanceView)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            performanceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            performanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            performanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            performanceView.heightAnchor.constraint(equalToConstant: 300),
            
            monthPerformanceView.topAnchor.constraint(equalTo: performanceView.bottomAnchor, constant: 20),
            monthPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            monthPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            monthPerformanceView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    override func configure() {
        super.configure()
        
        performanceView.configure(with: [ .init(value: "", height: 0.2, title: "MON"),
                                          .init(value: "2", height: 0.3, title: "TUE"),
                                          .init(value: "3", height: 0.4, title: "WED"),
                                          .init(value: "4", height: 0.7, title: "THU"),
                                          .init(value: "5", height: 1, title: "FRI"),
                                          .init(value: "3", height: 0.4, title: "SAT"),
                                          .init(value: "2", height: 0.3, title: "SUN")
                                        ])
    
    }
}
