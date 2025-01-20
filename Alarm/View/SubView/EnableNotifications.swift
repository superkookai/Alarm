//
//  EnableNotifications.swift
//  Alarm
//
//  Created by Weerawut Chaiyasomboon on 20/1/2568 BE.
//

import SwiftUI

struct EnableNotifications: View {
    var body: some View {
        ZStack {
            FourCoolCircles()
            
            VStack {
                Spacer()
                
                CoolTextView(text: "Enable notifications, please", size: 48)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Button {
                    
                } label: {
                    ButtonView(text: "enable")
                        .padding()
                }

            }
        }
    }
}

#Preview {
    EnableNotifications()
}
