//
//  SearchBarView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 06/02/2026.
//



import SwiftUI

struct SearchBarStyle {
    let searchTitle: String
    init(searchTitle: String) {
        self.searchTitle = searchTitle
    }
}
struct SearchBarView: View {
    
    @State private var text: String = ""
    let style: SearchBarStyle
    
    var body: some View {
       
        HStack(spacing: 8){
            Image(systemName: "magnifyingglass")
                .foregroundColor(.captionGray)

            TextField("", text: $text, prompt: Text(style.searchTitle).foregroundColor(.captionGray))
                .font(.dmSansRegular(16))
        }
        .padding(18)
        .frame(width: 362, height: 53)
        
        .background( Color.lightGray)
        .cornerRadius(80)
        .overlay(
            RoundedRectangle(cornerRadius: 80)
            
                .stroke(Color.smokeWhiteStroke, lineWidth: 1)
 
            
        )
    }
}

#Preview {
    SearchBarView(style: SearchBarStyle(searchTitle: "Search anything"))
}
