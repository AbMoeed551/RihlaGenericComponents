
//  ContentView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 04/02/2026.


import SwiftUI

struct ContentView: View {
    

    
//    var hadiths = [
//        HadithModel(
//            title: "Daily Hadiths",
//            content: "One Umrah to the next is an expiation for whatever happened between them and the only reward for an accepted Hajj is paradise.",
//            reference: "- Sahih Muslim"
//        ),
//        HadithModel(
//            title: "Daily Hadiths",
//            content: "The best among you are those who have the best manners and character.",
//            reference: "- Bukhari"
//        )
//    ]
//    
    var body: some View {
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
        .cornerRadius(8)
        .padding()
    
   }
}


#Preview {
    ContentView()
}
