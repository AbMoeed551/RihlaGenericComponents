//
//  HapticFeedBackView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 06/03/2026.
//

import SwiftUI

struct HapticFeedBackView: View {
    @State private var tasbeehCounter = false
    @State private var bookMarkDua = false
    var body: some View {
        RihlaScreenContainer(style: .init(title: "Haptic Feedback",baseStyle: .none)){
            
            VStack(spacing: 8){
                HapticFeedBackCellView(isToggleEnable: $tasbeehCounter, style: .init(title: "Tasbeeh Counter", description: "Vibrate with each tap on the counter"))
                    .onChange(of: tasbeehCounter) { if tasbeehCounter { print("moeed") } else { print("afaq") } }
                Divider()
                
                HapticFeedBackCellView(isToggleEnable: $bookMarkDua, style: .init(title: "Bookmark Dua", description: "Vibrate when saving or removing bookmarks"))
                
            }
   
            .background(Color.white)
            .cornerRadius(16)
            .padding(.top,24)
       
          
        }
    }
}

#Preview {
    HapticFeedBackView()
}
