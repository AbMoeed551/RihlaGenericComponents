//
//  TabBarView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 10/02/2026.
//

import SwiftUI

struct TabBarView: View {

    @State private var selectedTab: Int = 0

    var body: some View {
        
        HStack(spacing: 4) {

            tabItem(icon: .home, title: "Home", index: 0)
            tabItem(icon: .checklist1, title: "Ibadah", index: 1)
            tabItem(icon: .moon1, title: "Duas", index: 2)
            tabItem(icon: .home, title: "Tasbih", index: 3)
        }
        .padding(.horizontal, 16)
        .frame(width: 310, height: 76)
        .background(.white)
        .cornerRadius(56)
        .shadow(color: Color.black.opacity(0.09), radius: 20, x: 4, y: 8)
    }

    @ViewBuilder
    func tabItem(icon: ImageResource, title: String, index: Int) -> some View {

        let isSelected = selectedTab == index

        HStack(spacing: 8) {
            Image(icon)
                .frame(width: 24, height: 24)
              

            if isSelected {
                Text(title)
                    .font(.dmSansSemiBold(12))
                    .foregroundColor(.white)
                    //.transition(.opacity.combined(with: .scale))
            }
        }
        .frame(width: isSelected ? 122 : 48, height: 48)
        .background(isSelected ? Color.darkGray : Color.clear)
        .cornerRadius(64)
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.35)) {
                selectedTab = index
            }
        }
    }
}


#Preview {
    TabBarView()
}



