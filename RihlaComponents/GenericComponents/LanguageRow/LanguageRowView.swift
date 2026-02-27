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
    init(flagImage: String, languageName: String) {
        self.flagImage = flagImage
        self.languageName = languageName
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
        .background(Color.white)
        .cornerRadius(16)
        .shadow(
            color: Color.black.opacity(0.09),
            radius: 20,
            x: 4,
            y: 8
        )
    }
}

#Preview {
    LanguageRowView(style: LanguageRowViewStyle(flagImage: "saudia", languageName: "Arabic - Saudi Arabia"))
}
