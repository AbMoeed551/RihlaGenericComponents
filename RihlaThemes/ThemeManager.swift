//
//  ThemeManager.swift
//  RihlaComponents
//
//  Created by Abdul Haseeb on 05/03/2026.
//
import SwiftUI

public struct AppStorageStrings {
    public static let selectedAppTheme = "selectedAppTheme"
}

public enum Themes: String {
    case light
    case dark
    case system
}

public class ThemeManager: ObservableObject {
    @Published public var currentTheme: Themes
    @AppStorage(AppStorageStrings.selectedAppTheme) private var storedTheme: String = Themes.system.rawValue
    
    public init() {
        let saved = UserDefaults.standard.string(forKey: AppStorageStrings.selectedAppTheme)
        self.currentTheme = Themes(rawValue: saved ?? Themes.system.rawValue) ?? .system
    }
    
    private var isLightModeOn: Bool {
        switch currentTheme {
        case .light:
            return true
        case .dark:
            return false
        case .system:
            return UITraitCollection.current.userInterfaceStyle == .light
        }
    }
    
    public var RihlaBackground: Color {
        isLightModeOn ? .lightGreyColor : .lightGreyColor
    }
    
    public var mintGreen: Color {
        isLightModeOn ? .mintGreen : .mintGreen
    }
}
extension Color {
    static let lightGreyColor = Color(red: 248/255, green: 248/255, blue: 248/255)
    
    static let lightGray = Color (
      red: 231/255,
      green: 231/255,
      blue: 231/255,
    )
      
      static let mintGreen = Color (
          red: 43/255,
          green: 102/255,
          blue: 76/255,
      )
      
      static let steel = Color (
          red: 91/255,
          green: 91/255,
          blue: 91/255,
      )
      
      static let jungleGreen = Color (
          red: 58/255,
          green: 136/255,
          blue: 102/255,
      )
      
      static let smokeWhiteStroke = Color (
          red: 238/255,
          green: 238/255,
          blue: 238/255,
      )
      
      static let captionGray = Color (
          red: 114/255,
          green: 114/255,
          blue: 114/255,
      )
      
      static let activeGreen = Color (
          red: 58/255,
          green: 136/255,
          blue: 102/255,
      )
      
      static let customiseWhite = Color (
          red: 242/255,
          green: 242/255,
          blue: 242/255,
      )
      
      static let darkGray = Color (
          red: 68/255,
          green: 68/255,
          blue: 68/255,
      )
      
      static let secondaryPaleYello = Color (
          red: 255/255,
          green: 242/255,
          blue: 198/255,
      )
      
      static let freshGreenStroke = Color (
          red: 87/255,
          green: 204/255,
          blue: 153/255,
      )
      
      static let tickButtonColor = Color (
          red: 72/255,
          green: 170/255,
          blue: 128/255,
      )
      static let offWhite = Color (
          red: 248/255,
          green: 248/255,
          blue: 248/255,
      )

    
}
