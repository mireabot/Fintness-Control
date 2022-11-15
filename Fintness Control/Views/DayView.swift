//
//  DayView.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

class DayView: RootUIView {
    //MARK: - Properties
    
    private let nameLabel = UILabel()
    
    private let dateLabel = UILabel()
    
    private let dayStackView = UIStackView()
    
    //MARK: - Lifecycle
    
    //MARK: - Helpers
    
    func configure(with index: Int, and name: String) {
        let today = Date().startWeek
        let currentDay = today.goNext(to: index)
        let date = Calendar.current.component(.day, from: currentDay)
        
        let isToday = currentDay.cutTime() == Date().cutTime()
        
        backgroundColor = isToday ? .primary : .background
        
        nameLabel.text = name.uppercased()
        nameLabel.textColor = isToday ? .white : .darkGray
        
        dateLabel.text = "\(date)"
        dateLabel.textColor = isToday ? .white : .darkGray
    }
}

extension DayView {
    override func addView() {
        super.addView()
        
        addActivatedView(dayStackView)
        dayStackView.addArrangedSubview(nameLabel)
        dayStackView.addArrangedSubview(dateLabel)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            dayStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            dayStackView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    override func configure() {
        super.configure()
        
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        nameLabel.font = Resourses.Fonts.regular(with: 10)
        nameLabel.textAlignment = .center
        
        dateLabel.font = Resourses.Fonts.regular(with: 15)
        dateLabel.textAlignment = .center
        
        dayStackView.axis = .vertical
        dayStackView.spacing = 5
    }
}

