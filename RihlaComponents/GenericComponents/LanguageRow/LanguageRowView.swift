//
//  LanguageRowView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 16/02/2026.
//

import SwiftUI
struct LanguageRowViewStyle {
    let flagImage: String
    let languageName: String
    var isSelected: Bool = false // new
    var backgroundColor: Color = .white
    var borderColor: Color = .clear
    
    init(flagImage: String, languageName: String, isSelected: Bool, backgroundColor: Color, borderColor: Color) {
        self.flagImage = flagImage
        self.languageName = languageName
        self.isSelected = isSelected
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
    }
}

struct LanguageRowView: View {
    let style: LanguageRowViewStyle
    init(style: LanguageRowViewStyle) {
        self.style = style
    }
    var body: some View {
        HStack{
            HStack(spacing: 4){
                Image(style.flagImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 20)
                    .clipShape(Circle())
                
                MeduimText(style: .init(text: style.languageName, size: 16, color: .black))
                Spacer()
                
            }
            .padding(16)
        }
        .background(style.isSelected ? Color.customiseWhite : style.backgroundColor)
        .cornerRadius(16)
        .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(style.borderColor, lineWidth: style.isSelected ? 1 : 0)
                )
        .shadow(
            color: Color.black.opacity(0.09),
            radius: 20,
            x: 4,
            y: 8
        )
    }
}

#Preview {
    VStack{
        LanguageRowView(
            style: LanguageRowViewStyle(
                flagImage: "saudia",
                languageName: "Arabic - Saudi Arabia",
                isSelected: true,
                backgroundColor: .white,
                borderColor: .freshGreenStroke
            )
        )
    }
    .padding()
  
}
