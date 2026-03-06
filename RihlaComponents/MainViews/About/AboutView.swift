//
//  AboutView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 04/03/2026.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        RihlaScreenContainer(style: .init(title: "About",baseStyle: .none)) {
            VStack(alignment: .center, spacing: 0) {
                Image(.rihlaIcon)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(.top, 40)
                SemiBoldText(style: .init(text: "Rihla", textColor: .mintGreen, textSize: 25))
                    .padding(.top,8)
                MeduimText(style: .init(text: "Version 2.5.0", size: 14, color: .captionGray))
                    .padding(.top, 12)
                
                MeduimText(style: .init(text: "Rihla - All rights reserved", size: 14, color: .captionGray))
                List {
                    ForEach(0..<2) { i in
                        Text("Terms and Privacy Policy")
                        
                            .padding(.leading, 12)
                            
                            .cornerRadius(12)
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets())
                            //.listRowBackground(Color.clear)
                    }
                    
                }
               
                .scrollContentBackground(.hidden)
//                .frame(width: 380)
                .padding(.top, 12)
                .scrollDisabled(true)
                .listStyle(.plain)
            }
        }
    }
    
    private func aboutListView(title: String) -> some View {
        VStack {
        
        }
    }
    
    
}

#Preview {
    
    
    AboutView()
    
    
}
//.listRowBackground(Color.white) // Har cell ka background white rakha
//.listRowInsets(EdgeInsets())    // Default side padding khatam kar di
