//
//  AlarmModel.swift
//  Alarm
//
//  Created by Weerawut Chaiyasomboon on 20/1/2568 BE.
//

import SwiftUI

struct AlarmModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let body: String
    let repeats: Bool
    var sound: Sounds
    var alarmEnabled: Bool
    var start: Date
    var end: Date
    
    var activity: String
    var colorIndex: Int
    var activityColor: Color {
        mainColors[colorIndex]
    }
    
    var timeInterval: TimeInterval {
        end - start //end.timeIntervalSince(start)
    }
    
    var startTime: TimeModel {
        dateToTimeModel(date: start)
    }
    var endTime: TimeModel {
        dateToTimeModel(date: end)
    }
    
    static func defaultAlarm() -> AlarmModel {
        AlarmModel(
            title: "Activity Completed",
            body: "Have a great day!",
            repeats: false,
            sound: .lagrima,
            alarmEnabled: false,
            start: Date(),
            end: Date(),
            activity: activities[0],
            colorIndex: 0
            )
    }
    
    static func dummyAlarmDate() -> [AlarmModel] {
        [
            AlarmModel( title: "Activity completed.", body: "Have a great day!", repeats: false, sound: .lagrima, alarmEnabled: true, start: Date(), end: addHourToDate(date: Date(), numHours: 3, numMinutes: 15), activity: "moon.zzz.fill", colorIndex: 0),
            AlarmModel( title: "Yo yo !", body: "Peace", repeats: false, sound: .lagrima, alarmEnabled: true, start: Date(), end: addHourToDate(date: Date(), numHours: 20, numMinutes: 30), activity: "sun.max.fill", colorIndex: 2),
            AlarmModel( title: "Another title", body: "Peace", repeats: false, sound: .lagrima, alarmEnabled: false, start: Date(), end: addHourToDate(date: Date(), numHours: 7, numMinutes: 0), activity: "figure.skiing.downhill", colorIndex: 1),
            AlarmModel( title: "Activity completed.", body: "Have a great day!", repeats: false, sound: .lagrima, alarmEnabled: true, start: Date(), end: addHourToDate(date: Date(), numHours: 20, numMinutes: 7), activity: "moon.zzz.fill", colorIndex: 0),
            AlarmModel( title: "Yo yo !", body: "Peace", repeats: false, sound: .lagrima, alarmEnabled: true, start: Date(), end: addHourToDate(date: Date(), numHours: 1, numMinutes: 15), activity: "sun.max.fill", colorIndex: 2),
            AlarmModel( title: "Another title", body: "Peace", repeats: false, sound: .lagrima, alarmEnabled: false, start: Date(), end: addHourToDate(date: Date(), numHours: 3, numMinutes: 45), activity: "figure.skiing.downhill", colorIndex: 1),
            AlarmModel( title: "Activity completed.", body: "Have a great day!", repeats: false, sound: .lagrima, alarmEnabled: true, start: Date(), end: addHourToDate(date: Date(), numHours: 20, numMinutes: 15), activity: "moon.zzz.fill", colorIndex: 0),
            AlarmModel( title: "Yo yo !", body: "Peace", repeats: false, sound: .lagrima, alarmEnabled: true, start: Date(), end: addHourToDate(date: Date(), numHours: 20, numMinutes: 5), activity: "sun.max.fill", colorIndex: 2),
            AlarmModel( title: "Another title", body: "Peace", repeats: false, sound: .lagrima, alarmEnabled: false, start: Date(), end: addHourToDate(date: Date(), numHours: 22, numMinutes: 00), activity: "figure.skiing.downhill", colorIndex: 1),
            AlarmModel( title: "Activity completed.", body: "Have a great day!", repeats: false, sound: .lagrima, alarmEnabled: true, start: Date(), end: addHourToDate(date: Date(), numHours: 7, numMinutes: 50), activity: "moon.zzz.fill", colorIndex: 0),
            AlarmModel( title: "Yo yo !", body: "Peace", repeats: false, sound: .lagrima, alarmEnabled: true, start: Date(), end: addHourToDate(date: Date(), numHours: 18, numMinutes: 35), activity: "sun.max.fill", colorIndex: 2),
            AlarmModel( title: "Another title", body: "Peace", repeats: false, sound: .lagrima, alarmEnabled: false, start: Date(), end: addHourToDate(date: Date(), numHours: 23, numMinutes: 0), activity: "figure.skiing.downhill", colorIndex: 1),
            AlarmModel( title: "Activity completed.", body: "Have a great day!", repeats: false, sound: .lagrima, alarmEnabled: true, start: Date(), end: addHourToDate(date: Date(), numHours: 0, numMinutes: 10), activity: "moon.zzz.fill", colorIndex: 0),
            AlarmModel( title: "Yo yo !", body: "Peace", repeats: false, sound: .lagrima, alarmEnabled: true, start: Date(), end: addHourToDate(date: Date(), numHours: 0, numMinutes: 20), activity: "sun.max.fill", colorIndex: 2),
            AlarmModel( title: "Another title", body: "Peace", repeats: false, sound: .lagrima, alarmEnabled: false, start: Date(), end: addHourToDate(date: Date(), numHours: 0, numMinutes: 30), activity: "figure.skiing.downhill", colorIndex: 1),
            AlarmModel( title: "Activity completed.", body: "Have a great day!", repeats: false, sound: .lagrima, alarmEnabled: true, start: Date(), end: addHourToDate(date: Date(), numHours: 0, numMinutes: 10), activity: "moon.zzz.fill", colorIndex: 0),
            AlarmModel( title: "Yo yo !", body: "Peace", repeats: false, sound: .lagrima, alarmEnabled: true, start: Date(), end: addHourToDate(date: Date(), numHours: 0, numMinutes: 20), activity: "sun.max.fill", colorIndex: 2),
            AlarmModel( title: "Another title", body: "Peace", repeats: false, sound: .lagrima, alarmEnabled: false, start: Date(), end: addHourToDate(date: Date(), numHours: 0, numMinutes: 30), activity: "figure.skiing.downhill", colorIndex: 1)
        ]
        .sorted(by: {
            $0.endTime < $1.endTime
        })
    }
}
