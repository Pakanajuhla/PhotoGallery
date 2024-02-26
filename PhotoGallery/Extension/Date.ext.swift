//
//  Date.ext.swift
//  PhotoGallery
//
//  Created by Vladyslav on 26.02.2024.
//

import UIKit

extension Date {
    func getDateDiference() -> String {
        let currentDateIntervar = Int(Date().timeIntervalSinceReferenceDate)
        let dateDifferences = Double(currentDateIntervar - Int(self.timeIntervalSinceReferenceDate))
        let dateDifferencesDate = Int(round(dateDifferences/86400))
        
        switch dateDifferencesDate {
        case 0:
            return "сегодня"
        case 1:
            return "вчера"
        case 2...4:
            return "\(dateDifferencesDate) дня назад"
        default:
            return "\(dateDifferencesDate) дней назад"
            
        }
    }
}
