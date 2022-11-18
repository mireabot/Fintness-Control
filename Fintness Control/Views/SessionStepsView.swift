//
//  SessionStepsView.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/17/22.
//

import UIKit

final class SessionStepsView: RootInfoView {
    //MARK: - Properties
    
    private let barView = RootBarsView()
    //MARK: - Lifecycle
    
    //MARK: - Helpers
    
    func configure(with item: [RootBarView.BarsData]) {
        barView.configure(with: item)
    }
}

extension SessionStepsView { 
    override func addView() {
        super.addView()
        
        addActivatedView(barView)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            barView.topAnchor.constraint(equalTo: content.topAnchor, constant: 10),
            barView.leadingAnchor.constraint(equalTo: content.leadingAnchor, constant: 10),
            barView.trailingAnchor.constraint(equalTo: content.trailingAnchor, constant: -10),
            barView.bottomAnchor.constraint(equalTo: content.bottomAnchor, constant: -10)
        ])
    }
    
    override func configure() {
        super.configure()
        
    }
}

