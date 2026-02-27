//
//  ArabicRegularText.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 25/02/2026.
//
import SwiftUI

struct ArabicRegularTextStyle {
    let text: String
    let size: CGFloat
    let color: Color
    init(text: String, size: CGFloat, color: Color) {
        self.text = text
        self.size = size
        self.color = color
    }
}



struct ArabicRegularText: View {
    let style: ArabicRegularTextStyle
    init(style: ArabicRegularTextStyle) {
        self.style = style
    }
    var body: some View {
        Text(style.text)
            .font(.meQuranRegular(style.size))
            .foregroundColor(style.color)
    }
}

#Preview {
    ArabicRegularText(style: ArabicRegularTextStyle(text: "", size: 3, color: .red))
}

