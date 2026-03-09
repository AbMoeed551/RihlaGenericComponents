//
//  SignInOptionsView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 09/03/2026.
//

import SwiftUI

struct SignInOptionsView: View {
    var body: some View {
        VStack (alignment: .center, spacing: 0){
            Image(.rihlaIcon)
                .resizable()
                .frame(width: 64, height: 64)
            SemiBoldText(style: .init(text: "Stay Consistent with Daily Spiritual Actions", textColor: .black, textSize: 25))
                .multilineTextAlignment(.center)
                .padding(.top, 40)
            RegularText(style: .init(text: "Sign in to mark daily deeds, \nperform adhkars, and stay consistent", textColor: .captionGray, textSize: 16))
                .multilineTextAlignment(.center)
                .padding(.top, 12)
            VStack(spacing: 8){
                SignInButtonView(style: .init(image: "globe", title: "Continue with Google", action: {}))
                SignInButtonView(style: .init(image: "apple.logo", title: "Continue with Apple", action: {}))
                Button{
                    print("hekek")
                }
                label: {
                    MeduimText(style: .init(text: "Continue as guest", size: 16, color: .black))
                }
                Spacer()
                InformationCardView()
                    
            }
            .padding(.top,32)
           
        }
        .padding()
    }
}

#Preview {
    SignInOptionsView()
}
