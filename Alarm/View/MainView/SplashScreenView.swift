//
//  SplashScreenView.swift
//  Alarm
//
//  Created by Weerawut Chaiyasomboon on 20/1/2568 BE.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive: Bool = false
    @State private var opacity = 0.3
    @State private var fontSize = 12.0
    
    var body: some View {
        if isActive {
            MainAlarmView()
        } else {
            ZStack {
                FourCoolCircles(color1: blue, color2: .clear)
                
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        CoolTextView(text: "hello there!", size: fontSize)
                        CoolTextView(text: "let's add an alarm", size: fontSize)
                    }
                    .multilineTextAlignment(.leading)
                    .padding()
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.5)) {
                            opacity = 1
                            fontSize = 36
                        }
                    }
                    
                    Spacer()
                    
                    Image(welcome)
                        .resizable()
                        .scaledToFit()
                        .opacity(0.7)
                    
                    Spacer()
                }
            }
            .onAppear {
                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
                    withAnimation {
                        isActive = true
                    }
                }
            }
            .onTapGesture {
                withAnimation {
                    isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
