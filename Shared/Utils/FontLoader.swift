//
//  FontLoader.swift
//  RIHLA
//
//  Created by Abdul Moeed on 04/02/2026.
//

import Foundation
import SwiftUI
public class FontLoader {
    public static func registerFonts() {
        let fonts = ["DMSans_18pt-SemiBold","DMSans_18pt-SemiBoldItalic","DMSans-Medium","DMSans-Regular", "me_quran Regular"]
        for font in fonts {
            registerFont(named: font)
        }
    }

    private static func registerFont(named fontName: String) {
        guard let fontURL = Bundle.main.url(forResource: fontName, withExtension: "ttf"),
              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
              let font = CGFont(fontDataProvider) else {
            print(" Failed to load font: \(fontName)")
            return
        }
        
        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterGraphicsFont(font, &error) {
            print("Error registering font: \(error.debugDescription)")
        } else {
            print("Successfully registered font: \(fontName)")
        }
    }
}
