
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
    @State private var showToast: Bool = false

    var body: some View {
        ZStack(alignment: .top) {
            
          
            VStack {
           Spacer()
                DoneButtonView(style: DoneButtonStyle(action: {
                    print("hello Moeed")
                    showToast = true
                }))
                Spacer()
        
            }
            
         
            if showToast {
                ToastNotficationView(onDismiss: {
                    showToast = false
                })
               // .padding(.top, 16)
            }
        }
    }
}


#Preview {
    ContentView()
}
