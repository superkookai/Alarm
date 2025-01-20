//
//  CoolTextView.swift
//  Alarm
//
//  Created by Weerawut Chaiyasomboon on 20/1/2568 BE.
//

import SwiftUI

struct CoolTextView: View {
    let fontName = "WorkSans-VariableFont_wght"
    let text: LocalizedStringKey
    let size: CGFloat
    
    var body: some View {
        Text(text)
            .font(.custom(fontName, size: size))
            .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 0)
    }
}

#Preview {
    CoolTextView(text: "set alarm and\nwake up easily", size: 36)
}
