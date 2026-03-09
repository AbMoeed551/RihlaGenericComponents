//
//  RegularText.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 17/02/2026.
//

import Foundation
import SwiftUI

struct RegularTextStyle {
    let text: String
    let textColor: Color
    let textSize: CGFloat
}
struct RegularText: View {
    let style: RegularTextStyle
    var body: some View {
        Text(style.text)
            .font(.dmSansRegular(style.textSize))
            .foregroundColor(style.textColor)
    }
}





