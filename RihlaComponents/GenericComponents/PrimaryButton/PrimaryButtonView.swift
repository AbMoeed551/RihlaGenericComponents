//
//  PrimaryButtonView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 09/02/2026.
//

import SwiftUI
struct PrimaryButtonViewStyle {
    let text: String
    let bacgroundColor : Color
    let textColor: Color
    let action: () -> Void
    init(text: String, bacgroundColor: Color, textColor: Color, action: @escaping () -> Void) {
        self.text = text
        self.bacgroundColor = bacgroundColor
        self.textColor = textColor
        self.action = action
    }
}
struct PrimaryButtonView: View {
    let style: PrimaryButtonViewStyle
    init(style: PrimaryButtonViewStyle) {
        self.style = style
    }
    var body: some View {
        Button(action: style.action){
           // Text(style.text)
//                .font(.dmSansSemiBold(16))
//                .foregroundColor(style.textColor)
            SemiBoldText(style: SemiBoldTextStyle(text: style.text, textColor: style.textColor, textSize: 16))
                .frame(width: 362, height: 49)
                .background(style.bacgroundColor)
                .cornerRadius(44)
        }
    }
}

#Preview {
    PrimaryButtonView(
        style: PrimaryButtonViewStyle(
            text: "Done", bacgroundColor: .jungleGreen, textColor: .white,
            action: { }
        )
    )
}
