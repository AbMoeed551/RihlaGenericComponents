//
//  ToggleCircleButtonView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 03/03/2026.
//

import SwiftUI
struct ToggleCircleButtonStyle {
    let width: CGFloat
       let height: CGFloat
       let backGroundColor: Color
       let onImage: String
       let offImage: String
       let imageColor: Color
       let imageWidth: CGFloat
       let imageHeight: CGFloat
       let action: (Bool) -> Void
    
    init(width: CGFloat, height: CGFloat, backGroundColor: Color, onImage: String, offImage: String, imageColor: Color, imageWidth: CGFloat, imageHeight: CGFloat, action: @escaping (Bool) -> Void) {
        self.width = width
        self.height = height
        self.backGroundColor = backGroundColor
        self.onImage = onImage
        self.offImage = offImage
        self.imageColor = imageColor
        self.imageWidth = imageWidth
        self.imageHeight = imageHeight
        self.action = action
    }
}

struct ToggleCircleButtonView: View {
    
    @Binding var isOn: Bool
    let style: ToggleCircleButtonStyle
   
    var body: some View {
        Button {
            isOn.toggle()
            style.action(isOn)
        }
        label: {
        ZStack{
            Circle()
                .fill(
                    Color(style.backGroundColor))
                .frame(width: style.width, height: style.height)
            Image(systemName: isOn ? style.onImage : style.offImage)
                .resizable()
                .scaledToFit()
                .frame(width: style.imageWidth, height: style.imageHeight)
                .foregroundColor(style.imageColor)
        }
    }
        
    }
}


    #Preview {
        ToggleCircleButtonView(isOn: .constant(true), style: ToggleCircleButtonStyle(width: 44, height: 44, backGroundColor: .yellow, onImage: "heart", offImage: "heart.fill", imageColor: .activeGreen, imageWidth: 18, imageHeight: 18, action: {_ in }))
    }


