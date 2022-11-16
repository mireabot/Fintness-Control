//
//  CustomOptionButton.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

public enum ButtonStyle {
    case primary
    case secondary
}

final class CustomOptionButton: UIButton {
    //MARK: - Properties
    
    private let title = UILabel()
    
    private let image = UIImageView()
    
    private var type: ButtonStyle = .primary
        
    //MARK: - Lifecycle
    init(with type: ButtonStyle, and title: String? = nil) {
        super.init(frame: .zero)
        self.type = type
        
        addViews()
        layout()
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        addViews()
        layout()
        configure()
    }
    //MARK: - Helpers
    
    func setTitle(_ label: String?) {
        title.text = label
    }
}

private extension CustomOptionButton {
    func addViews() {
        addActivatedView(title)
        addActivatedView(image)
    }
    
    func layout() {
        
        var offset : CGFloat {
            switch type {
            case .primary: return 0
            case .secondary: return 10
            }
        }
        
        NSLayoutConstraint.activate([
            image.centerYAnchor.constraint(equalTo: centerYAnchor),
            image.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -offset),
            image.heightAnchor.constraint(equalToConstant: 5),
            image.widthAnchor.constraint(equalToConstant: 10),
            
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
            title.trailingAnchor.constraint(equalTo: image.leadingAnchor, constant: -10),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: offset)
        ])
    }
    
    func configure() {
        switch type {
        case .primary:
            title.textColor = .darkGray
            image.tintColor = .darkGray
            title.font = Resourses.Fonts.regular(with: 15)
        case .secondary:
            backgroundColor = .secondary
            layer.cornerRadius = 15
            title.textColor = .primary
            image.tintColor = .primary
            title.font = Resourses.Fonts.regular(with: 15)

        }
        
        title.textAlignment = .center
        
        image.image = Resourses.Images.SystemImages.arrowDown?.withRenderingMode(.alwaysTemplate)
        
        
        makeSystemButton(self)
    }
}
