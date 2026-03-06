//
//  GradiantsExtension.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 03/03/2026.
//

import SwiftUI

extension LinearGradient {
    static var primaryGreenGradient: LinearGradient {
            LinearGradient(
                colors: [
                    Color(red: 18/255, green: 54/255, blue: 38/255),
                    Color(red: 45/255, green: 115/255, blue: 78/255),
                    Color(red: 12/255, green: 40/255, blue: 28/255)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        }
   
}

