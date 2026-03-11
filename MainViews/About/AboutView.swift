//
//  AboutView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 04/03/2026.
//

//  AboutView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 04/03/2026.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        RihlaScreenContainer(style: .init(title: "About", baseStyle: .none)) {
            VStack(alignment: .center, spacing: 0) {
                Image(.rihlaIcon)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(.top, 40)
                SemiBoldText(style: .init(text: "Rihla", textColor: .mintGreen, textSize: 25))
                    .padding(.top, 8)
                MeduimText(style: .init(text: "Version 2.5.0", size: 14, color: .captionGray))
                    .padding(.top, 12)
                MeduimText(style: .init(text: "Rihla - All rights reserved", size: 14, color: .captionGray))

                VStack(spacing: 8) {
                    AboutCellView(style: .init(primaryTitle: "Terms and Conditions"))
                        .onTapGesture {
                            print ("logic here")
                        }
                    Divider()
                    AboutCellView(style: .init(primaryTitle: "Licenses"))
                        .onTapGesture {
                            print ("logic here")
                        }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(16)
                .padding(.top, 24)
               
              
            }
        }
    }
}

#Preview {
    AboutView()
}
