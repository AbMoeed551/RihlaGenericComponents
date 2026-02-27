//
//  BackButtonView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 09/02/2026.
//

import SwiftUI

struct BackButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.lightGray)
                .frame(width: 44, height: 44)
            Image(.arrowLeftRound)
                .frame(width: 20, height: 20)
        }
    }
}

#Preview {
    BackButtonView()
}
