//
//  OverViewWorkoutView.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/18/22.
//

import UIKit

final class OverViewWorkoutView: RootInfoView {
    //MARK: - Properties
    
    private let stackView : UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 15
        
        return stack
    }()
    //MARK: - Lifecycle
    
    //MARK: - Helpers
    
    func configureStack(with item: [WorkoutItemView.ItemData]) {
        item.forEach {
            let itemView = WorkoutItemView()
            itemView.configure(with: $0)
            
            stackView.addArrangedSubview(itemView)
        }
    }
}

extension OverViewWorkoutView {
    override func addView() {
        super.addView()
        
        addActivatedView(stackView)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: content.topAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: content.leadingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: content.trailingAnchor, constant: -15),
            stackView.bottomAnchor.constraint(equalTo: content.bottomAnchor, constant: -10)
        ])
    }
    
    override func configure() {
        super.configure()
        
    }
}

