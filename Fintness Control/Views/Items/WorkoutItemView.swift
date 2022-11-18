//
//  WorkoutItemView.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/18/22.
//

import UIKit

final class WorkoutItemView: RootUIView {
    //MARK: - Properties
    
    struct ItemData {
        let title: String
        let details: String
    }
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .darkGray
        label.font = Resourses.Fonts.regular(with: 17)
        
        return label
    }()
    
    private let detailsLabel : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = Resourses.Fonts.regular(with: 15)
        
        return label
    }()
    
    private let stackView : UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 0
        
        return stack
    }()
    
    //MARK: - Lifecycle
    
    //MARK: - Helpers
    
    func configure(with item: ItemData) {
        titleLabel.text = item.title
        detailsLabel.text = item.details
    }
}

extension WorkoutItemView {
    override func addView() {
        super.addView()
        
        addActivatedView(stackView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(detailsLabel)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        ])
    }
    
    override func configure() {
        super.configure()
        
        backgroundColor = .white
    }
}
