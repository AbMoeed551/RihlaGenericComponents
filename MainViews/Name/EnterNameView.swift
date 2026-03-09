//
//  EnterNameView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 09/03/2026.
//

import SwiftUI

struct EnterNameView: View {
    var body: some View {
        RihlaScreenContainer(style: .init(baseStyle: .none)){
            VStack(alignment: .leading, spacing: 0){
                SemiBoldText(style: .init(text: "Your Name", textColor: .black, textSize: 25))
                RegularText(style: .init(text: "Your name helps us personalise your app", textColor: .captionGray, textSize: 16))
                TextFieldView(text: "", style: TextFieldStyle(textFieldplaceholder: "Name"))
                    .padding(.top, 24)
                Spacer()
                PrimaryButtonView(
                    style: PrimaryButtonViewStyle(
                        text: "Done", bacgroundColor: .lightGray, textColor: .black,
                        action: { }
                    )
                )
                
            }
            .padding(.top,16)
            
        }
    }
}

#Preview {
    EnterNameView()
}
