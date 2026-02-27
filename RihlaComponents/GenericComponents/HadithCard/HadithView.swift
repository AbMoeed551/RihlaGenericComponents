//
//  HadithView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 27/02/2026.
//

import SwiftUI

import SwiftUI

struct HadithViewStyle {
    let hadithLabel: String
    let hadith: String
    let hadithReference: String
    init(hadithLabel: String, hadith: String, hadithReference: String) {
        self.hadithLabel = hadithLabel
        self.hadith = hadith
        self.hadithReference = hadithReference
    }
}

struct HadithView: View {
    let style: HadithViewStyle
    init(style: HadithViewStyle) {
        self.style = style
    }
    var body: some View {
        
        VStack(alignment: .center, spacing: 8){
            SemiBoldText(style: SemiBoldTextStyle(text: style.hadithLabel, textColor: .black, textSize: 20))
            MeduimText(style: MediumTextStyle(text: style.hadith, size: 14, color: .black))
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true) // ✅ fix
            MeduimText(style: MediumTextStyle(text: style.hadithReference, size: 14, color: .black.opacity(0.5)))
                .multilineTextAlignment(.center)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color.white.opacity(0.3))
        .cornerRadius(8)
    }
}
#Preview {
    HadithView(style: HadithViewStyle(hadithLabel: "Daily Hadiths", hadith: "One Umrah to the next is an expiation for whatever happened between them and the only reward for an accepted Hajj is paradise.", hadithReference: "- Sahih Muslim"))
}
//struct HadithCardView: View {
//    
//    let model: HadithModel
//    var hadiths = [
//        HadithModel(
//            title: "Daily Hadiths",
//            content: "One Umrah to the next is an expiation for whatever happened between them and the only reward for an accepted Hajj is paradise.",
//            reference: "- Sahih Muslim"
//        ),
//        HadithModel(
//            title: "Daily Hadiths",
//            content: "The best among you are those who have the best manners and character.",
//            reference: "- Bukhari"
//        )
//    ]
//    
//    var body: some View {
//        VStack(spacing: 12) {
//            
//            Text(model.title)
//                .font(.title2)
//                .fontWeight(.bold)
//                .multilineTextAlignment(.center)
//            
//            Text(model.content)
//                .font(.body)
//                .multilineTextAlignment(.center)
//              
//            
//            Text(model.reference)
//                .font(.subheadline)
//                .foregroundColor(.gray)
//        }
//       // .padding(20)
//        .background(
//            Color.secondaryPaleYello
//        )
//        //.padding(.horizontal, 20)
//    }
//}
//#Preview {
//   HadithCardView(model: HadithModel(title: "Daily Hadiths", content: "One Umrah to the next is an expiation for whatever happened between them and the only reward for an accepted Hajj is paradise.", reference: "- Sahih Muslim"))
//}
//VStack(spacing: 8){
//    SemiBoldText(style: SemiBoldTextStyle(text: style.hadithLabel, textColor: .black, textSize: 20))
//    MeduimText(style: MediumTextStyle(text: style.hadith, size: 14, color: .black))
//    
//        .multilineTextAlignment(.center)
//    MeduimText(style: MediumTextStyle(text: style.hadithReference, size: 14, color: .black.opacity(0.5)))
//        .multilineTextAlignment(.center)
//}
////.padding()
////.frame(maxWidth: .infinity)
//.background(Color.black.opacity(0.3))
//.cornerRadius(8)
