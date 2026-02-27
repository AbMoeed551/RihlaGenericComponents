//
//  SemiBoldText.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 17/02/2026.
//

import Foundation

import SwiftUI

struct SemiBoldTextStyle {
    let text: String
    let textColor: Color
    let textSize: CGFloat
}
struct SemiBoldText: View {
    let style: SemiBoldTextStyle
    init(style: SemiBoldTextStyle) {
        self.style = style
    }
    var body: some View {
        Text(style.text)
            .font(.dmSansSemiBold(style.textSize))
            .foregroundColor(style.textColor)
    }
}



