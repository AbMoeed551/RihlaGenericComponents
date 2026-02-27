//
//  HadithCardView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 27/02/2026.
//

import SwiftUI


struct HadithCardView: View {
    let items: [HadithViewStyle]
    @State private var currentIndex = 0

    var body: some View {
        VStack(spacing: 0) {

            Image(.book)
                .resizable()
                .frame(width: 150, height: 150)
            TabView(selection: $currentIndex) {
                ForEach(0..<items.count, id: \.self) { index in
                    HadithView(style: items[index])
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: 180)
            .animation(.easeInOut, value: currentIndex)

            HStack(spacing: 8) {
                ForEach(0..<items.count, id: \.self) { index in
                    Circle()
                        .fill(index == currentIndex ? .black : .gray.opacity(0.4))
                        .frame(width: 6, height: 6)
                        .onTapGesture {
                            withAnimation {
                                currentIndex = index
                            }
                        }
                }
            }
        }
        .padding()
        .background(Color.secondaryPaleYello)
    }
}
#Preview {
    HadithCardView(items: [
        HadithViewStyle(
            hadithLabel: "Daily Hadiths",
            hadith: "One Umrah to the next is an expiation for whatever happened between them and the only reward for an accepted Hajj is paradise",
            hadithReference: "- Sahih Muslim"
        ),
        HadithViewStyle(
            hadithLabel: "Daily Hadiths",
            hadith: "The best among you are those who have the best manners.",
            hadithReference: "- Bukhari"
        ),
        HadithViewStyle(
            hadithLabel: "Daily Hadiths",
            hadith: "Actions are judged by intentions.",
            hadithReference: "- Bukhari & Muslim"
        )
    ])
}
