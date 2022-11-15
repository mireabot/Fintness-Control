//
//  OverviewNavBarController.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

class OverviewNavBar: RootUIView {
    //MARK: - Properties
    private let filterButton = CustomOptionButton()
    
    private let addButton = UIButton()
    
    private let titleLabel = UILabel()
    
    private let weekView = WeekView()
    
    //MARK: - Lifecycle
    
    //MARK: - Helpers
    
    override func layoutSubviews() {
        createBottomLine(with: .line!, height: 1)
    }
}

extension OverviewNavBar {
    override func addView() {
        super.addView()
        
        addActivatedView(filterButton)
        addActivatedView(titleLabel)
        addActivatedView(addButton)
        addActivatedView(weekView)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            filterButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            filterButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            filterButton.heightAnchor.constraint(equalToConstant: 28),
            filterButton.widthAnchor.constraint(equalToConstant: 130),
            
            titleLabel.centerYAnchor.constraint(equalTo: filterButton.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 42)
            
        ])
        
    }

    override func configure() {
        super.configure()
        backgroundColor = .white
        
        filterButton.setTitle("All Workouts")
        filterButton.addTarget(self, action: #selector(filterButtonTapped), for: .touchUpInside)
        
        titleLabel.text = "Today"
        titleLabel.font = Resourses.Fonts.regular(with: 22)
        titleLabel.textColor = .darkGray
        
        addButton.setImage(Resourses.Images.SystemImages.add, for: .normal)
        addButton.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
        
        
    }
}

@objc extension OverviewNavBar {
    func filterButtonTapped() {}
    func addButtonTapped() {}
}
