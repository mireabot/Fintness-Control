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
    
    private let workoutView18 = OverViewWorkoutView(with: "Friday, February 18".uppercased())
    
    private let workoutView19 = OverViewWorkoutView(with: "Saturday, February 19".uppercased())
    
    
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
        view.addActivatedView(workoutView18)
        view.addActivatedView(workoutView19)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            workoutView18.topAnchor.constraint(equalTo: navBar.bottomAnchor, constant: 30),
            workoutView18.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            workoutView18.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            workoutView19.topAnchor.constraint(equalTo: workoutView18.bottomAnchor, constant: 20),
            workoutView19.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            workoutView19.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
        ])
    }
    
    override func configure() {
        super.configure()
        navigationController?.navigationBar.isHidden = true
        navBar.translatesAutoresizingMaskIntoConstraints = false
        
        workoutView18.configureStack(with: [ .init(title: "Warm Up Cardio", details: "Stair Climber • 10 minutes"),
                                             .init(title: "Chest Workout", details: "Bench Press • 3 sets • 10 reps"),
                                             .init(title: "Tricep Workout", details: "Overhead Extension • 5 sets • 8 reps")
                                           ])
        
        workoutView19.configureStack(with: [.init(title: "Cardio Interval Workout", details: "Treadmill • 60 minutes")
                                           ])
    }
}
