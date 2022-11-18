//
//  RootBarView.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/17/22.
//

import UIKit

class RootBarsView: RootUIView {
    //MARK: - Properties
    
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillEqually
        return stack
    }()
    
    //MARK: - Helpers
    
    func configure(with data: [RootBarView.BarsData]) {
        data.forEach {
            let bar = RootBarView(data: $0)
            stackView.addArrangedSubview(bar)
        }
    }
}

extension RootBarsView {
    override func addView() { 
        super.addView()
        
        addActivatedView(stackView)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configure() {
        super.configure()
        
        backgroundColor = .clear
    }
}
