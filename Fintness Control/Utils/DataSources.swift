//
//  DataSources.swift
//  Fintness Control
//
//  Created by Mikhail Kolkov on 11/17/22.
//

import Foundation

enum StatsItem {
    case averagePace(value: String)
    case heartRate(value: String)
    case totalDistance(value: String)
    case totalSteps(value: String)

    var data: StatsItemView.ItemData {
        switch self {
        case .averagePace(let value):
            return .init(image: Resourses.Images.StatsImages.pace,
                         value: value + " / km",
                         title: Resourses.Strings.StatsStrings.pace)
        case .heartRate(let value):
            return .init(image: Resourses.Images.StatsImages.heart,
                         value: value + " bpm",
                         title: Resourses.Strings.StatsStrings.heart)
        case .totalDistance(let value):
            return .init(image: Resourses.Images.StatsImages.distance,
                         value: value + " km",
                         title: Resourses.Strings.StatsStrings.distance)
        case .totalSteps(let value):
            return .init(image: Resourses.Images.StatsImages.steps,
                         value: value,
                         title: Resourses.Strings.StatsStrings.steps)
        }
    }
}
