//
//  TickButton.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 02/03/2026.
//

import SwiftUI

struct TickButton: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.tickButtonColor)
                .frame(width: 32, height: 32)
            Image(systemName: "checkmark")
                .fontWeight(.bold)
                .frame(width: 10.7, height: 8)
                .foregroundColor(.white)
                
        }
        
        
        
    }
}

#Preview {
    TickButton()
}
