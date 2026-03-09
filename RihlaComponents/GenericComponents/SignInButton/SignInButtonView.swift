//
//  SignInButtonView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 09/03/2026.
//

import SwiftUI

struct SignInButtonStyle{
    let image: String
    let title: String
    let action: () -> Void
    init(image: String, title: String, action: @escaping () -> Void) {
        self.image = image
        self.title = title
        self.action = action
    }
}
struct SignInButtonView: View {
    let style: SignInButtonStyle
    var body: some View {
        
        
        Button{
            style.action()
        }
        
        label: {
        
        HStack(spacing: 8){
            Image(systemName: style.image)
                .resizable()
                .frame(width: 16.8,height: 20)
            MeduimText(style: .init(text: style.title, size: 16, color: .black))
            
        }
        .frame(width: 362, height: 53)
        .background(Color.lightGray)
        .cornerRadius(12)
    }

    }
}

#Preview {
    SignInButtonView(style: .init(image: "globe", title: "Continue with Google", action: {}))
}
