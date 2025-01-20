//
//  TimeModel.swift
//  Alarm
//
//  Created by Weerawut Chaiyasomboon on 20/1/2568 BE.
//

import Foundation

struct TimeModel: Equatable, Comparable, Identifiable {
    let id = UUID()
    let hours: Int
    let minutes: Int
    
    static func < (lhs: TimeModel, rhs: TimeModel) -> Bool {
//        if lhs.hours < rhs.hours {
//            return true
//        } else if (lhs.hours == rhs.hours && lhs.minutes < rhs.minutes){
//            return true
//        } else {
//            return false
//        }

        return (lhs.hours < rhs.hours) || (lhs.hours == rhs.hours && lhs.minutes < rhs.minutes)
    }
}
