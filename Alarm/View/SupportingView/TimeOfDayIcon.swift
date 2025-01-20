//
//  TimeOfDayIcon.swift
//  Alarm
//
//  Created by Weerawut Chaiyasomboon on 20/1/2568 BE.
//

import SwiftUI

struct TimeOfDayIcon: View {
    let date: Date
    var percent: CGFloat {
        dateToPercent(date: self.date)
    }
    var hour: Int {
        Int(24*percent)
    }
    var image: (name: String, color: Color) {
        switch(hour) {
        case 6..<8:
            return ("sun.and.horizon.fill", .orange)
        case 8..<17:
            return ("sun.max.fill", .yellow)
        case 17..<20:
            return ("sun.and.horizon.fill", .pink)
        case 20..<23:
            return ("moon.fill", .black)
        default:
            return ("moon.stars.fill", .black)
        }
    }
    
    var body: some View {
        Image(systemName: image.name)
            .foregroundStyle(image.color)
    }

}

#Preview {
    let theDate = Date()
    List(0..<24) { h in
        HStack {
            let setDate = addHourToDate(date: theDate, numHours: h, numMinutes: 0)
            Text(getTimeFromDate(date: setDate))
            TimeOfDayIcon(date: setDate)
        }
    }
}
