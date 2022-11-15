//
//  Extensions.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import UIKit

//MARK: - UIColor
extension UIColor {
    static let primary = UIColor(named: "primary")
    static let secondary = UIColor(named: "secondary")
    static let background = UIColor(named: "background")
    static let line = UIColor(named: "line")
}

//MARK: - UIView
extension UIView {
    func createBottomLine(with color: UIColor, height: CGFloat) {
        let line = UIView()
        line.backgroundColor = color
        line.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        line.frame = CGRect(x: 0, y: frame.height - height, width: frame.width, height: height)
        
        addSubview(line)
    }
}
