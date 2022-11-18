//
//  StatsItemView.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/17/22.
//

import UIKit

final class StatsItemView: RootUIView {
    //MARK: - Properties
    
    struct ItemData {
        let image: UIImage?
        let value: String
        let title: String
    }
    
    private let imageView = UIImageView()
    
    private let statsLabel : UILabel = {
        let label = UILabel()
        label.textColor = .darkGray
        label.font = Resourses.Fonts.regular(with: 18)
        label.textAlignment = .left
        
        return label
    }()
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = Resourses.Fonts.regular(with: 10)
        label.textAlignment = .left
        
        return label
    }()
    
    private let textStack : UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 0
        
        return stack
    }()
    
    //MARK: - Lifecycle
    
    //MARK: - Helpers
    
    func configure(with item: StatsItem) {
        imageView.image = item.data.image
        titleLabel.text = item.data.title.uppercased()
        statsLabel.text = item.data.value
    }
}

extension StatsItemView {
    override func addView() {
        super.addView()
        
        addActivatedView(imageView)
        addActivatedView(textStack)
        
        textStack.addArrangedSubview(statsLabel)
        textStack.addArrangedSubview(titleLabel)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 24),
            imageView.widthAnchor.constraint(equalToConstant: 24),
            
            textStack.topAnchor.constraint(equalTo: topAnchor),
            textStack.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            textStack.trailingAnchor.constraint(equalTo: trailingAnchor),
            textStack.bottomAnchor.constraint(equalTo: bottomAnchor)
            
        ])
    }
    
    override func configure() {
        super.configure()
        
        backgroundColor = .white
    }
}
