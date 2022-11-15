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
    
    func makeSystemButton(_ button: UIButton) {
        button.addTarget(self, action: #selector(handleIn), for: [
            .touchDown,
            .touchDragInside
        ])
        
        button.addTarget(self, action: #selector(handleOut), for: [
            .touchDragOutside,
            .touchUpInside,
            .touchUpOutside,
            .touchDragExit,
            .touchCancel
        ])
    }
    
    @objc func handleIn() {
        UIView.animate(withDuration: 0.15) {
            self.alpha = 0.55
        }
    }
    
    @objc func handleOut() {
        UIView.animate(withDuration: 0.15) {
            self.alpha = 1
        }
    }
    
    func addActivatedView(_ view: UIView) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}

//MARK: - Date
extension Date {
    private var calendar : Calendar {
        return Calendar.current
    }
    
    var startWeek: Date {
        let component = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        guard let day = calendar.date(from: component) else { return self}
        
        return calendar.date(byAdding: .day, value: 1, to: day) ?? self
    }
    
    func goNext(to days: Int) -> Date {
        return calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
    
    func cutTime() -> Date {
        let components = calendar.dateComponents([.year, .month, .day], from: self)
        
        return calendar.date(from: components) ?? self
    }
}
