//
//  FontsExtension.swift
//  RIHLA
//
//  Created by Abdul Moeed on 04/02/2026.
//

import SwiftUI

public extension Font {

    static func dmSansSemiBold(_ size: CGFloat) -> Font {
        .custom("DMSans18pt-SemiBold", size: size)
    }

    static func dmSansSemiBoldItalic(_ size: CGFloat) -> Font {
        .custom("DMSans18pt-SemiBoldItalic", size: size)
    }
    
    static func dmSansMedium(_ size: CGFloat) -> Font {
        .custom("DMSans-Medium", size: size)
    }
    
    static func dmSansRegular(_ size: CGFloat) -> Font {
        .custom("DMSans-Regular", size: size)
    }
    
    static func meQuranRegular(_ size: CGFloat) -> Font {
        .custom("me_quran Regular", size: size)
    }
}
