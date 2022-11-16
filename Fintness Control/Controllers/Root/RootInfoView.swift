//
//  RootInfoView.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/16/22.
//

import UIKit

class RootInfoView: RootUIView {
    //MARK: - Propertis
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        label.font = Resourses.Fonts.regular(with: 13)
        label.textColor = .darkGray
        label.text = "Title".uppercased()
        
        return label
    }()
    
    private let button = CustomOptionButton(with: .primary)
    
    private let content : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = UIColor.line?.cgColor
        view.layer.cornerRadius = 5
        view.layer.borderWidth = 1
        
        return view
    }()
    
    //MARK: - Lifecycle
    
    init(with title: String? = nil, buttonTitle: String? = nil) {
        super.init(frame: .zero)
        
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = buttonTitle == nil ? .center : .left
        
        button.setTitle(buttonTitle)
        button.isHidden = buttonTitle == nil ? true : false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
    func addButtonTarget(target: AnyObject?, action: Selector) {
        button.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension RootInfoView {
    override func addView() {
        super.addView()
        addActivatedView(titleLabel)
        addActivatedView(content)
        addActivatedView(button)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            content.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            content.leadingAnchor.constraint(equalTo: leadingAnchor),
            content.trailingAnchor.constraint(equalTo: trailingAnchor),
            content.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            button.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.heightAnchor.constraint(equalToConstant: 30),
//            button.widthAnchor.constraint(equalToConstant: 110)
        ])
    }
    
    override func configure() {
        super.configure()
        backgroundColor = .clear
    }
}
