//
//  DuaCardView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 11/02/2026.
//

import SwiftUI
struct  DuaCardViewStyle {
    let arabicDua: String
    let englishTranslation: String
    let isPlayingIcon: String
    init(arabicDua: String, englishTranslation: String, isPlayingIcon: String) {
        self.arabicDua = arabicDua
        self.englishTranslation = englishTranslation
        self.isPlayingIcon = isPlayingIcon
    }
}
struct DuaCardView: View {
    @State private var isFavourite = false
    let style: DuaCardViewStyle
    init(style: DuaCardViewStyle) {
        self.style = style
    }
    var body: some View {
        
            VStack(alignment: .leading, spacing: 24 ){
                ToggleCircleButtonView(isOn: $isFavourite, style: ToggleCircleButtonStyle(width: 44, height: 44, backGroundColor: .jungleGreen, onImage: "play", offImage: "pause", imageColor: .white, imageWidth: 18, imageHeight: 18, action: {a in
                print ("hello moeed")
                }))
                ArabicRegularText(style: .init(text: style.arabicDua, size: 28, color: .white))
                    .multilineTextAlignment(.trailing)
                    .lineSpacing(30)
                RegularText(style: .init(text: style.englishTranslation, textColor: .white, textSize: 16))
                    .multilineTextAlignment(.leading)
            }
            .padding()
            .background(
                LinearGradient.primaryGreenGradient
            )
          
            .cornerRadius(16)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
       
}

#Preview {
    ZStack{
        DuaCardView(style: DuaCardViewStyle(arabicDua: "بِسْمِ اللّٰهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ", englishTranslation: "“In the Name of Allah with Whose Name nothing can cause harm in the earth or in the heavens, and He is the All-Hearing, the All-Knowing.”", isPlayingIcon: "play.fill"))
    }
    .padding()
}


