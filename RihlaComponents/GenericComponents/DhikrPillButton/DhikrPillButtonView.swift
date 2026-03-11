//
//  DhikrPillButtonView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 11/03/2026.
//

import SwiftUI
struct DhikrPillButtonStyle {
    let title: String
    let isSelected: Bool
    let action: () -> Void
    init(title: String, isSelected: Bool, action: @escaping () -> Void) {
        self.title = title
        self.isSelected = isSelected
        self.action = action
    }
    
}
struct DhikrPillButtonView: View {
    let style: DhikrPillButtonStyle
    var body: some View {
        Button(action: style.action){
            MeduimText(style: .init(text: style.title, size: 13, color: style.isSelected ? .white: .black))
                .padding()
//                .padding(.vertical, 12)
                .background(
                    RoundedRectangle(cornerRadius: 48)
                        .fill(style.isSelected ? Color.activeGreen: Color.lightGray )
                )
                
        }

    }
}

#Preview {
    ScrollView(.horizontal, showsIndicators: false) {
    HStack(spacing: 20) {
        ForEach(0..<2) { i in
            DhikrPillButtonView(
                style: DhikrPillButtonStyle(
                    title: "Alhamdulillah",
                    isSelected: true,
                    action: { print("Selected tapped") }
                )
            )
            
            DhikrPillButtonView(
                style: DhikrPillButtonStyle(
                    title: "Subhan Allah",
                    isSelected: false,
                    action: { print("Unselected tapped") }
                )
            )
        }
    }
    .padding()
    .background(Color.gray.opacity(0.1))
}
}
