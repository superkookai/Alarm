//
//  MainGradient.swift
//  Alarm
//
//  Created by Weerawut Chaiyasomboon on 20/1/2568 BE.
//

import SwiftUI

struct MainGradient: View {
    var startRadius: CGFloat = 0
    let endRadius: CGFloat
    var scaleX: CGFloat = 2
    var opacityLinGrad = 0.5
    var opacityRadGrad = 1.0
    var yellowColor: Color = yellow
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [blue,purple,pink], startPoint: .top, endPoint: .bottom)
                .opacity(opacityLinGrad)
            
            RadialGradient(colors: [yellowColor,.clear], center: .bottom, startRadius: startRadius, endRadius: endRadius)
                .opacity(opacityRadGrad)
                .scaleEffect(x: scaleX)
            
        }
    }
}

#Preview {
    MainGradient(endRadius: 75)
        .frame(width: screenWidth, height: 100)
}
