//
//  WeekView.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

class WeekView: RootUIView {
    //MARK: - Properties
    
    private let weekStackView = UIStackView()
    
    private let calendar = Calendar.current
    
    //MARK: - Lifecycle
    
    //MARK: - Helpers
}

extension WeekView {
    override func addView() {
        super.addView()
        
        addActivatedView(weekStackView)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            weekStackView.topAnchor.constraint(equalTo: topAnchor),
            weekStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            weekStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            weekStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configure() {
        super.configure()
        
        weekStackView.axis = .horizontal
        weekStackView.spacing = 8
        weekStackView.distribution = .fillEqually
        
        var weekdays = calendar.shortWeekdaySymbols
        if calendar.firstWeekday == 1 {
            let first = weekdays.remove(at: 0)
            weekdays.append(first)
        }
        weekdays.enumerated().forEach { index, name in
            let view = DayView()
            view.configure(with: index, and: name)
            weekStackView.addArrangedSubview(view)
        }
        
    }
}
