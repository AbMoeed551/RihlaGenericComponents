//
//  HapticFeedBackCellView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 06/03/2026.
//

import SwiftUI
struct HapticFeedBackCellStyle {
    let title: String
    let description: String
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
}
 
struct HapticFeedBackCellView: View {
    @Binding var isToggleEnable: Bool
    let style: HapticFeedBackCellStyle
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 4){
                MeduimText(style: .init(text: style.title, size: 16, color: .black))
                RegularText(style: .init(text: style.description, textColor: .captionGray, textSize: 12))
                
            }
          
                
           Spacer()
            Toggle(isOn: $isToggleEnable) {
                    EmptyView()
                }
                .labelsHidden()
                
        }
        .padding()
    }
}

#Preview {
    
    VStack{
        HapticFeedBackCellView(isToggleEnable: .constant(false), style: HapticFeedBackCellStyle(title: "Tasbeeh Counter", description: "Vibrate with each tap on the counter"));
        Divider()
        HapticFeedBackCellView(isToggleEnable: .constant(false), style: HapticFeedBackCellStyle(title: "Tasbeeh Counter", description: "Vibrate when saving or removing bookmarks"))
    }
    .background(Color.red)
    .cornerRadius(16)
    .padding(.horizontal, 24)
   
}
