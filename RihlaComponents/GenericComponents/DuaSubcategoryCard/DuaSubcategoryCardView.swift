//
//  DuaSubcategoryCardView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 09/02/2026.
//

import SwiftUI

struct DuaSubcategoryCardViewStyle {
    let duaTitle: String
    let duaDescription: String
    let arabicDua: String
    let numberOfDeeds: String
}

struct DuaSubcategoryCardView: View {
    let style: DuaSubcategoryCardViewStyle
    init(style: DuaSubcategoryCardViewStyle) {
        self.style = style
    }
    var body: some View {
        VStack{
            VStack(alignment: .leading,spacing: 20) {
                TopViews
                BodyView
                BottomView
        }
            .padding(16)
           
        }
        .background(Color.white)
        .cornerRadius(20)
        .shadow(
            color: Color.black.opacity(0.09),
            radius: 20,
            x: 4,
            y: 8
        )
    }
    
    var TopViews: some View {
        HStack{
            VStack(alignment: .leading, spacing: 4){
                SemiBoldText(style: SemiBoldTextStyle(text: style.duaTitle, textColor: .black, textSize: 18))
                MeduimText(style: MediumTextStyle(text: style.duaDescription, size: 14, color: .captionGray))
                
            }
            Spacer()
            CircleIconView(
                style: CircleIconStyle(
                    width: 44,
                    height: 44,
                    backGroundColor: .yellow,
                    image: "globe",
                    imageColor: .activeGreen,
                    imageWidth: 18,
                    imageHeight: 18, action: {
                        print("hello moeed")
                    }
                )
            )
        }
    }
    
    var BodyView: some View {
        VStack{
            ArabicRegularText(style: ArabicRegularTextStyle(text: style.arabicDua, size: 20, color: .activeGreen))
           
        }
    }
     
    var BottomView: some View {
        VStack(spacing: 20) {
            Rectangle()
                .frame(width: 330, height: 1)
                .foregroundColor(.customiseWhite)
        HStack(spacing: 8){
            Circle()
                .fill(Color.activeGreen)
                .frame(width: 8,height: 8)
            MeduimText(style: MediumTextStyle(text: style.numberOfDeeds, size: 13, color: .black))
            
            Spacer()
            RoundedActionButtonView(style: RoundedActionButtonStyle(buttonBackgroundColor: .mintGreen, buttonTitle: "View", buttonTitleColor: .white, action: {}, width: 61, height: 37))
        }
    }
    }
}

#Preview {
    DuaSubcategoryCardView(style: DuaSubcategoryCardViewStyle(duaTitle: "Dua Before Sleeping", duaDescription: "Seeking protection for the night", arabicDua: "اللَّهُمَّ بِاسْمِكَ أَمُوتُ وَأَحْيَ", numberOfDeeds: "Earn two deeds"))
}

