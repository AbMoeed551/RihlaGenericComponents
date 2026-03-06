//
//  SettingCardCellView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 04/03/2026.
//

import SwiftUI

struct SettingCardCellStyle {
    let primaryTitle: String
    let secondaryTitle: String?
    
    init(primaryTitle: String, secondaryTitle: String? = nil) {
        self.primaryTitle = primaryTitle
        self.secondaryTitle = secondaryTitle
    }
}
struct SettingCardCellView: View {
    let style: SettingCardCellStyle

    var body: some View {
        HStack {
            MeduimText(style: .init(text: style.primaryTitle, size: 16, color: .black))
            Spacer() // pushes secondaryTitle and arrow to right
            if let secondaryTitle = style.secondaryTitle {
                MeduimText(style: .init(text: secondaryTitle, size: 14, color: .jungleGreen))
            }
            Image(.arrowRightRound)
                .frame(width: 12, height: 12) // arrow size adjust
        }
        .padding(.vertical, 8) // vertical padding same as NotficationCell
       // .padding(.horizontal, 16) // horizontal padding to match NotficationCell
 // optional, makes List row look full-width
    }
}

#Preview {
   
    
    VStack{
        List {
            SettingCardCellView(
                style: SettingCardCellStyle(
                    primaryTitle: "Notifications",
                    secondaryTitle: "Enabled",
                )
            )
            SettingCardCellView(
                style: SettingCardCellStyle(
                    primaryTitle: "Notifications",
                    secondaryTitle: "Enabled",
                )
            )
        }
    }
         
        
    

}
//
//var body: some View {
//    
//    HStack{
//        MeduimText(style: .init(text: style.primaryTitle, size: 16, color: .black))
//        Spacer()
//        if let secondaryTitle = style.secondaryTitle {
//                       MeduimText(style: .init(text: secondaryTitle, size: 14, color: .jungleGreen))
//                   }
//        Image(style.arrowImage)
//           // .resizable()
//            .frame(width: 4.3, height: 10)
//           
//           // .padding()
//    }
//    .padding(.vertical, 4)
//  
//    
//   
//}
