//
//  DoneButtonView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 13/02/2026.
//

import SwiftUI
struct DoneButtonStyle {
    let action: () -> Void
    init(action: @escaping () -> Void) {
        self.action = action
    }
}
struct DoneButtonView: View {
    let style: DoneButtonStyle
    init(style: DoneButtonStyle) {
        self.style = style
    }
    var body: some View {
        Button(action: style.action){
            SemiBoldText(style: SemiBoldTextStyle(text: "Done", textColor: .white, textSize: 12))
                .frame(width: 53, height: 28)
                .background(Color.activeGreen)
                .cornerRadius(8)
        }
            }
}

#Preview {
    DoneButtonView(style: DoneButtonStyle(action: {}))
}
