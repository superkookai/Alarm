//
//  TimeAndDateSupport.swift
//  Alarm
//
//  Created by Weerawut Chaiyasomboon on 20/1/2568 BE.
//

import Foundation

//MARK: - Functions
func dateToPercent(date: Date) -> CGFloat {
    let result = getTimeComponents(from: date)
    return CGFloat(result.hour)/24 + CGFloat(result.minute)/(60*24)
}

func getTimeComponents(from date: Date) -> (hour: Int, minute: Int, day: Int, month: Int, year: Int) {
    let components = Calendar.current.dateComponents([.hour,.minute,.day,.month,.year], from: date)
    
    let hour = components.hour ?? 0
    let minute = components.minute ?? 0
    let day = components.day ?? 0
    let month = components.month ?? 0
    let year = components.year ?? 0
    
    return (hour, minute, day, month, year)
}

func getTimeFromDate(date: Date) -> String {
    let result = getTimeComponents(from: date)
    let hour = result.hour
    let minute = result.minute
    return String(format: "%02d:%02d", hour, minute)
}

func addHourToDate(date: Date, numHours: Int, numMinutes: Int) -> Date {
    date.addingTimeInterval(TimeInterval(numHours*60*60 + numMinutes*60))
}

func formatDate(date: Date) -> String {
    let result = getTimeComponents(from: date)
    return "\(result.day)-\(result.month)-\(result.year)[\(result.hour):\(result.minute)]"
}

func dateToTimeModel(date: Date) -> TimeModel {
    let result = getTimeComponents(from: date)
    return TimeModel(hours: result.hour, minutes: result.minute)
}

//MARK: - Date extension
extension Date {
    static func - (lhs: Date, rhs: Date) -> TimeInterval {
        lhs.timeIntervalSinceReferenceDate - rhs.timeIntervalSinceReferenceDate
    }
}
