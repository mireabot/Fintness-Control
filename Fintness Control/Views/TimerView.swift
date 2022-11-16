//
//  TimerView.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/16/22.
//

import UIKit

class TimerView: RootInfoView {
    //MARK: - Propertis
    
    private let progressView: ProgressView = {
        let view = ProgressView()
        view.drawProgress(with: 0.6)
        return view
    }()
    
    private let timeLabel : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.text = "Elapsed Time"
        label.font = Resourses.Fonts.regular(with: 14)
        label.textAlignment = .center
        
        return label
    }()
    
    private let valueTimeLabel : UILabel = {
        let label = UILabel()
        label.textColor = .darkGray
        label.text = "02:15"
        label.font = Resourses.Fonts.regular(with: 46)
        label.textAlignment = .center
        
        return label
    }()
    
    private let remainingTimeLabel : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.text = "Remaining Time"
        label.font = Resourses.Fonts.regular(with: 13)
        label.textAlignment = .center
        
        return label
    }()
    
    private let remainingTimeValueLabel : UILabel = {
        let label = UILabel()
        label.textColor = .darkGray
        label.text = "12:51"
        label.font = Resourses.Fonts.regular(with: 13)
        label.textAlignment = .center
        
        return label
    }()
    
    private let timerStackView : UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10
        stack.distribution = .fillProportionally
        
        return stack
    }()
    
    //MARK: - Lifecycle
    
    //MARK: - Helpers
}

extension TimerView {
    override func addView() {
        super.addView()
        
        addActivatedView(progressView)
        addActivatedView(timerStackView)
        
        [timeLabel,
         valueTimeLabel,
         remainingTimeLabel,
         remainingTimeValueLabel].forEach { timerStackView.addArrangedSubview($0) }
    }
    
    override func layout() {
        super.layout()
        
        NSLayoutConstraint.activate([
            progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor),
            progressView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -40),
            
            timerStackView.centerXAnchor.constraint(equalTo: progressView.centerXAnchor),
            timerStackView.centerYAnchor.constraint(equalTo: progressView.centerYAnchor)
        ])
    }
    
    override func configure() {
        super.configure()
        
    }
}
