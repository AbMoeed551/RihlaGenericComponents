//
//  AdhkarSubcategoryCardView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 13/02/2026.
//

import SwiftUI
struct AdhkarSubcategoryCardStyle {
    let adhkarTitle: String
    let description: String
    let deedLabel: String
    let action: () -> Void
    init(adhkarTitle: String, description: String, deedLabel: String, action: @escaping () -> Void) {
        self.adhkarTitle = adhkarTitle
        self.description = description
        self.deedLabel = deedLabel
        self.action = action
    }
}
struct AdhkarSubcategoryCardView: View {
    let style: AdhkarSubcategoryCardStyle
    init(style: AdhkarSubcategoryCardStyle) {
        self.style = style
    }
    var body: some View {
        VStack{
            VStack(spacing: 20){
                topView
                dividerView
                bottomView
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
    
    private var topView: some View {
        HStack(spacing: 4){
            CircleIconView(
                style: CircleIconStyle(
                    width: 44,
                    height: 44,
                    backGroundColor: .yellow,
                    image: "globe",
                    imageColor: .activeGreen,
                    imageWidth: 18,
                    imageHeight: 18, action: {}
                )
            )
            VStack(alignment: .leading, spacing: 4){
                SemiBoldText(style: SemiBoldTextStyle(text: style.adhkarTitle, textColor: .black, textSize: 18))
                MeduimText(style: MediumTextStyle(text: style.description, size: 14, color: .captionGray))
            }
            Spacer()
            DoneButtonView(style: .init(action: style.action))
        }
    }
    private var dividerView: some View {
        Rectangle()
            .frame(height: 1)
            .foregroundColor(.customiseWhite)
    }
    private var bottomView: some View {
        HStack{
        VStack(alignment: .leading, spacing: 8){
            ForEach(0..<2) { _ in
                HStack(spacing: 8) {
                    Circle()
                        .frame(width: 8, height: 8)
                        .foregroundColor(.mintGreen)
                    MeduimText(style: MediumTextStyle(text: style.deedLabel, size: 13, color: .black))
                }
            }

        }
            Spacer()
            RoundedActionButtonView(style: RoundedActionButtonStyle(buttonBackgroundColor: .lightGray, buttonTitle: "View", buttonTitleColor: .black, action: {}, width: 61, height: 37))
    }
    }
}

#Preview {
    ZStack {
       // Color.red.ignoresSafeArea()
        AdhkarSubcategoryCardView(style: AdhkarSubcategoryCardStyle(adhkarTitle: "Tahajjud Prayer", description: "Build faith through night prayer", deedLabel: "Earn 4 deeds", action: {}))
          //  .padding(.horizontal, 16)
    }
}
