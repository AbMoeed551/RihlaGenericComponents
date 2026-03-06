//
//  RihlaComponentsApp.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 04/02/2026.
//

import SwiftUI

@main
struct RihlaComponentsApp: App {

    init() {
        // 1️⃣ Font loader ko call karo
        FontLoader.registerFonts()

        // 2️⃣ Debug: console me fonts print karo
        for family in UIFont.familyNames {
            if family.lowercased().contains("dm") {
                print("Family:", family)
                for name in UIFont.fontNames(forFamilyName: family) {
                    print("  Font:", name)
                }
            }
        }
    }

    var body: some Scene {
        WindowGroup {
        // SearchBarView(style: SearchBarStyle(searchTitle: "hello"))
           // DuaCardView()
//            ContactSupportView()
            HapticFeedBackView()
     
        }
    }
}
