//
//  Deeds.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 02/03/2026.
//

import SwiftUI
struct DeedsStyle {
    let deedsLabel: String
    init(deedsLabel: String) {
        self.deedsLabel = deedsLabel
    }
    
}
struct Deeds: View {
    let style: DeedsStyle
    init(style: DeedsStyle) {
        self.style = style
    }
    var body: some View {
        HStack{
            SemiBoldText(style: SemiBoldTextStyle(text: style.deedsLabel , textColor: .black, textSize: 12))
        }
        .padding()
        .frame(width: 108, height: 32)
        .background(Color.offWhite)
        .cornerRadius(44)
    
      
    }
}

#Preview {
    Deeds(style: DeedsStyle(deedsLabel: "Earn 4 Deeds"))
}
