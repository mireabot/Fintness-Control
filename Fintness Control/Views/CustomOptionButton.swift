//
//  CustomOptionButton.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

final class CustomOptionButton: UIButton {
    //MARK: - Properties
    
    private let title = UILabel()
    
    private let image = UIImageView()
        
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layout()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
    func setTitle(_ label: String) {
        title.text = label
    }
}

private extension CustomOptionButton {
    func addViews() {
        addActivatedView(title)
        addActivatedView(image)
    }
    
    func layout() {
        NSLayoutConstraint.activate([
            image.centerYAnchor.constraint(equalTo: centerYAnchor),
            image.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            image.heightAnchor.constraint(equalToConstant: 5),
            image.widthAnchor.constraint(equalToConstant: 10),
            
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
            title.trailingAnchor.constraint(equalTo: image.leadingAnchor),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
    
    func configure() {
        
        backgroundColor = .secondary
        layer.cornerRadius = 15

        
        title.textColor = .primary
        title.textAlignment = .center
        title.font = Resourses.Fonts.regular(with: 15)
        
        image.image = Resourses.Images.SystemImages.arrowDown?.withRenderingMode(.alwaysTemplate)
        image.tintColor = .primary
        
        makeSystemButton(self)
    }
}
