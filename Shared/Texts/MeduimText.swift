//
//  MeduimText.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 17/02/2026.
//

import SwiftUI

 struct MediumTextStyle {
    let text: String
    let size: CGFloat
    let color: Color
}

 struct MeduimText: View {
    let style: MediumTextStyle
    
     init(style: MediumTextStyle) {
        self.style = style
    }
     
     var body: some View {
        Text(style.text)
            .font(.dmSansMedium(style.size))
            .foregroundColor(style.color)
    }
}
