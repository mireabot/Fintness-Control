//
//  Enums.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/15/22.
//

import Foundation
import UIKit

//MARK: - Tabs naming
enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

enum Resourses {
    enum Images {
        static var overview = UIImage(named: "overview")
        static var session = UIImage(named: "session")
        static var progress = UIImage(named: "progress")
        static var settings = UIImage(named: "settings")
    }
    
    enum Fonts {
        static func regular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
    enum Strings {
        static var overview = "Overview"
        static var session = "Session"
        static var progress = "Progress"
        static var settings = "Settings"
    }
}

enum NavBarPosition {
    case left
    case right
}
