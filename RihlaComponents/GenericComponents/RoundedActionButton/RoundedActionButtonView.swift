//
//  RoundedActionButtonView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 09/02/2026.
//

import SwiftUI

struct RoundedActionButtonStyle {
    let buttonBackgroundColor: Color
    let buttonTitle: String
    let buttonTitleColor: Color
    let action: () -> Void
    let width: CGFloat
    let height: CGFloat
    init(buttonBackgroundColor: Color, buttonTitle: String, buttonTitleColor: Color, action: @escaping () -> Void, width: CGFloat, height: CGFloat) {
        self.buttonBackgroundColor = buttonBackgroundColor
        self.buttonTitle = buttonTitle
        self.buttonTitleColor = buttonTitleColor
        self.action = action
        self.width = width
        self.height = height
    }
}

struct RoundedActionButtonView: View {
    let style:RoundedActionButtonStyle
    init(style: RoundedActionButtonStyle) {
        self.style = style
    }
    var body: some View {
        Button(action: style.action){
            MeduimText(style: MediumTextStyle(text: style.buttonTitle, size: 13, color: style.buttonTitleColor))
                .frame(width: style.width, height: style.height)
                .background(style.buttonBackgroundColor)
                .cornerRadius(44)
        }
    }
}

#Preview {
//    RoundedActionButtonView(style: RoundedActionButtonStyle(buttonBackgroundColor: .activeGreen))
    RoundedActionButtonView(style: RoundedActionButtonStyle(buttonBackgroundColor: .mintGreen, buttonTitle: "View", buttonTitleColor: .white, action: {}, width: 61, height: 37))
}
