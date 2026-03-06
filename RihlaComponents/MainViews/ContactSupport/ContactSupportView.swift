//
//  ContactSupportView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 04/03/2026.
//

import SwiftUI

struct ContactSupportView: View {
    var body: some View {
        
        RihlaScreenContainer(style: .init(title: "Contact Support", baseStyle: .none), content: {
            
            VStack {
                // BackButtonView(style: .init(title: "Contact Support", action: {}))
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        ZStack{
                            Circle()
                                .fill(Color.white)
                                .frame(width: 48, height: 48)
                            Image(.mail)
                                .scaledToFit()
                                .frame(width: 18, height: 15.3)
                        }
                        MeduimText(style: .init(text: "Write us at", size: 18, color: .black))
                            .padding(.top, 8)
                        
                        MeduimText(style: .init(text: "moeed4817@gmail.com", size: 16, color: .captionGray))
                            .padding(.top, 4)
                        
                        RoundedActionButtonView(style: .init(buttonBackgroundColor: .lightGray, buttonTitle: "Copy", buttonTitleColor: .black, action: {
                            
                        }, width: 64, height: 37))
                            .padding(.top, 16)
                    }
                    Spacer()
                }
                .padding()
                .background(Color.customiseWhite)
                .cornerRadius(16)
                .frame(maxWidth: .infinity)
                
                
            }
            .padding(.top, 34)
            
        })
        
    }
}

#Preview {
    ContactSupportView()
}
