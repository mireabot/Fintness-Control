//
//  ViewController.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/13/22.
//

import UIKit

final class RootTabBarController: UITabBarController {
    //MARK: - Propertis
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBar()
        configureControllers()
    }
    
    //MARK: - Helpers
    
    private func configureTabBar() {
        tabBar.tintColor = .primary
        tabBar.barTintColor = .background
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = UIColor.line?.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
    }
    
    private func configureControllers() {
        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let settingsController = SettingsController()
        
        let overviewNavigation = RootNavController(rootViewController: overviewController)
        let sessionNavigation = RootNavController(rootViewController: sessionController)
        let progressNavigation = RootNavController(rootViewController: progressController)
        let settingsNavigation = RootNavController(rootViewController: settingsController)
        
        overviewNavigation.tabBarItem = UITabBarItem(title: "Overview", image: Resourses.Images.overview, tag: Tabs.overview.rawValue)
        sessionNavigation.tabBarItem = UITabBarItem(title: "Session", image: Resourses.Images.session, tag: Tabs.session.rawValue)
        progressNavigation.tabBarItem = UITabBarItem(title: "Progress", image: Resourses.Images.progress, tag: Tabs.progress.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(title: "Settings", image: Resourses.Images.settings, tag: Tabs.settings.rawValue)
        
        viewControllers = [overviewNavigation, sessionNavigation, progressNavigation, settingsNavigation]
    }
}

