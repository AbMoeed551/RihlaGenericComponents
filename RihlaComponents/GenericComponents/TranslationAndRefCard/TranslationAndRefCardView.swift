//
//  TranslationAndRefCardView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 12/02/2026.
//

import SwiftUI
struct TranslationAndRefCardStyle {
    let title: String
    let description: String
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
}
struct TranslationAndRefCardView: View {
    let style: TranslationAndRefCardStyle
    init(style: TranslationAndRefCardStyle) {
        self.style = style
    }
    var body: some View {
        VStack{
            VStack(alignment: .leading,spacing: 12){
                SemiBoldText(style: SemiBoldTextStyle(text: style.title, textColor: .mintGreen, textSize: 18))
                RegularText(style: RegularTextStyle(text: style.description, textColor: .darkGray, textSize: 16))
            }
            .background(Color.customiseWhite)
            .padding(16)
         
        }
        .background(Color.customiseWhite)
        .cornerRadius(16)
    }
}

#Preview {
    TranslationAndRefCardView(style: TranslationAndRefCardStyle(title: "Reference", description: "Uthmaan bin 'Affaan (Radhi Allah Anh) said: Prophet Muhammad (Sal Allahu 'Alayhi Wa Sallam) said, Whoever recites this three times in the morning will not be afflicted by any calamity before evening, and whoever recites this three times in the evening will not be afflicted by any calamity before morning"))
}

