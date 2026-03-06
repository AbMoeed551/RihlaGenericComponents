//
//  CategoryRowView.swift
//  RIHLA
//
//  Created by Abdul Moeed on 03/02/2026.
//

import SwiftUI

struct CategoryRowViewStyle {
    let image: String
    let title: String
    let numberOfDua: String
    
    init(image: String, title: String, numberOfDua: String) {
        self.image = image
        self.title = title
        
        self.numberOfDua = numberOfDua
    }
}
struct CategoryRowView: View {
    let style: CategoryRowViewStyle
    
    init(style: CategoryRowViewStyle) {
        self.style = style
    }
    
    var body: some View {
        HStack{
            HStack(spacing: 8){
                CircleIconView(style: CircleIconStyle(width: 44, height: 44, backGroundColor: .lightGray, image: "heart", imageColor: .mintGreen, imageWidth: 15.8, imageHeight: 15.8, action: {}))
                SemiBoldText(style: SemiBoldTextStyle(text: style.title, textColor: .black, textSize: 16))
                Spacer()
                MeduimText(style: MediumTextStyle(text: style.numberOfDua, size: 13, color: .steel))
                Image(.arrowRightRound)
                    .frame(width: 20, height: 20)
            }
            .background(.white)
            
        }
        .padding(16)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(
            color: Color.black.opacity(0.09),
            radius: 20,
            x: 4,
            y: 8
        )
        
    }
        
}
#Preview {
    CategoryRowView(style: CategoryRowViewStyle(image: "heart", title: "hello Moeed", numberOfDua: "5 dua"))
}


