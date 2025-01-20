//
//  GrayTextView.swift
//  Alarm
//
//  Created by Weerawut Chaiyasomboon on 20/1/2568 BE.
//

import SwiftUI

struct GrayTextView: View {
    let text: LocalizedStringKey
    var font: Font = .headline
    
    var body: some View {
        Text(text)
            .foregroundStyle(.gray)
            .font(font)
    }
}

#Preview {
    ScrollView {
        VStack(alignment:.leading, spacing: 30) {
            GrayTextView(text: "No Alarms", font: .title)

            GrayTextView(text: "to Anton's page", font: .title)
            
            GrayTextView(text: "The UI for this nice Alarm app was largely inspired by the amazing work of Anton Leogky.",font: .title)
        }
        .padding()
    }
}
