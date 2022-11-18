//
//  RootBarView.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/17/22.
//

import UIKit

class RootBarView: RootUIView {
    //MARK: - Properties
    
    private let valueLabel : UILabel = {
        let label = UILabel()
        label.textColor = .primary
        label.font = Resourses.Fonts.regular(with: 13)
        label.textAlignment = .center
        
        return label
    }()
    
    private let barView : UIView = {
        let view = UIView()
        view.backgroundColor = .primary
        view.layer.cornerRadius = 2.5
        
        return view
    }()
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = Resourses.Fonts.regular(with: 9)
        label.textAlignment = .center
        
        return label
    }()
    
    private let height: Double
    
    //MARK: - Lifecycle
    
    init(data: BarsData) {
        self.height = data.height
        super.init(frame: .zero)
        
        titleLabel.text = data.title
        valueLabel.text = data.value
    }
    
    required init?(coder: NSCoder) {
        self.height = 0
        super.init(frame: .zero)
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: - Helpers
}

extension RootBarView {
    override func addView() {
        super.addView()
        
        addActivatedView(valueLabel)
        addActivatedView(titleLabel)
        addActivatedView(barView)
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            valueLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            barView.centerXAnchor.constraint(equalTo: centerXAnchor),
            barView.widthAnchor.constraint(equalToConstant: 17),
            barView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: height, constant: -40),
            barView.bottomAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 5),
            
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            titleLabel.topAnchor.constraint(equalTo: barView.bottomAnchor, constant: 10)
        ])
    }
    
    override func configure() {
        super.configure()
        
        backgroundColor = .clear
    }
}
