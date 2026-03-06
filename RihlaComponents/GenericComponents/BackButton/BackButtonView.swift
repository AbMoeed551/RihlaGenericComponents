//
//  BackButtonView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 09/02/2026.
//

import SwiftUI
struct BackButtonStyle {
    let title: String?
    let action: () -> Void
    init(title: String? = nil, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
}
struct BackButtonView: View {
    let style: BackButtonStyle
    init(style: BackButtonStyle) {
        self.style = style
    }
    var body: some View {
        HStack(spacing: 8) {
            Button {
                style.action()
            }
            label: {
                ZStack{
                    Circle()
                        .fill(Color.lightGray)
                        .frame(width: 44, height: 44)
                    Image(.arrowLeftRound)
                        .frame(width: 20, height: 20)
                }
            }
            if let title = style.title {
                SemiBoldText(style: .init(text: title, textColor: .black, textSize: 20))
            }
       
        }
    }
}

#Preview {
    
    VStack(spacing: 20) {
        BackButtonView(style: BackButtonStyle(title: "Contact Support", action: {}))
        BackButtonView(style: BackButtonStyle(action: {})) // Just the back button
    }
}
