//
//  CircleIconView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 06/02/2026.
//

import SwiftUI
struct CircleIconStyle {

    let width: CGFloat
    let height: CGFloat
    let backGroundColor: Color
    let image: String
    let imageColor: Color
    let imageWidth: CGFloat
    let imageHeight: CGFloat
    let action: () -> Void

    init(width: CGFloat, height: CGFloat, backGroundColor: Color, image: String, imageColor: Color, imageWidth: CGFloat, imageHeight: CGFloat, action: @escaping () -> Void) {
        self.width = width
        self.height = height
        self.backGroundColor = backGroundColor
        self.image = image
        self.imageColor = imageColor
        self.imageWidth = imageWidth
        self.imageHeight = imageHeight
        self.action = action
    }
}

struct CircleIconView: View {
    let style: CircleIconStyle
    
    init(style: CircleIconStyle) {
        self.style = style
    }
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    Color(style.backGroundColor))
                .frame(width: style.width, height: style.height)
            Image(style.image)
                .resizable()
                .scaledToFit()
                .frame(width: style.imageWidth, height: style.imageHeight)
                .foregroundColor(style.imageColor)
        }
        .onTapGesture {
            style.action()
        }
    }
}

#Preview {
    CircleIconView(
        style: CircleIconStyle(
            width: 44,
            height: 44,
            backGroundColor: .yellow,
            image: "globe",
            imageColor: .activeGreen,
            imageWidth: 18,
            imageHeight: 18, action: {}
        )
    )

}
