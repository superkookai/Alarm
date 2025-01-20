//
//  ButtonView.swift
//  Alarm
//
//  Created by Weerawut Chaiyasomboon on 20/1/2568 BE.
//

import SwiftUI

struct ButtonView: View {
    let text: LocalizedStringKey
    var endRadius: CGFloat = 40
    var scaleX: CGFloat = 3
    
    var body: some View {
        Text(text)
            .foregroundStyle(.black)
            .fontWeight(.semibold)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                MainGradient(endRadius: endRadius, scaleX: scaleX)
            )
            .clipShape(.rect(cornerRadius: 30))
    }
}

#Preview {
    VStack {
        ButtonView(text: "add alarm")
        ButtonView(text: "next")
        ButtonView(text: "create")
    }
    .padding()
}
