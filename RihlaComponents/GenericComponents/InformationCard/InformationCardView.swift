//
//  InformationCardView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 04/03/2026.
//

import SwiftUI

struct InformationCardView: View {
    var body: some View {
        VStack(spacing: 8){
            HStack(spacing: 8){
                Image(systemName: "bolt.shield")
                    .frame(width: 20, height: 20)
                SemiBoldText(style: .init(text: "What We Access", textColor: .black, textSize: 16))
            Spacer()
            }
            MeduimText(style: MediumTextStyle(text: "We only access your name and profile picture from Apple/Google. Your data remains private and secure.", size: 14, color: .darkGray))
                .multilineTextAlignment(.leading)
            
        }
        .padding()
        .background(Color.lightGray)
        .cornerRadius(12)
      
    }
}

#Preview {
    ZStack{
        Color.red
            .edgesIgnoringSafeArea(.all)
        InformationCardView()
    }
    .padding()
}
