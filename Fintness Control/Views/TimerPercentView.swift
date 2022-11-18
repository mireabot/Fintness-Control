//
//  TimerPercentView.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/17/22.
//

import UIKit

class TimerPercentView: RootUIView {
    //MARK: - Properties
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        label.font = Resourses.Fonts.regular(with: 10)
        label.textColor = .gray
        label.textAlignment = .center
        
        return label
    }()
    
    private let numberLabel : UILabel = {
        let label = UILabel()
        label.font = Resourses.Fonts.regular(with: 23)
        label.textColor = .darkGray
        label.textAlignment = .center
        
        return label
    }()
    
    private let stack : UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 5
        stack.distribution = .fillProportionally
        
        return stack
    }()
    
    //MARK: - Lifecycle
    
    //MARK: - Helpers
    
    func configure(with title: String, and value: Int) {
        titleLabel.text = title
        numberLabel.text = "\(value)%"
    }
}

extension TimerPercentView {
    override func addView() {
        super.addView()
        
        addActivatedView(stack)
        stack.addArrangedSubview(numberLabel)
        stack.addArrangedSubview(titleLabel)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: topAnchor),
            stack.leadingAnchor.constraint(equalTo: leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: trailingAnchor),
            stack.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
