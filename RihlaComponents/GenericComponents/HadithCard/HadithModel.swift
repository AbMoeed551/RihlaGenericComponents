//
//  HadithModel.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 27/02/2026.
//

import Foundation
struct HadithModel: Identifiable {
    let id = UUID()
    let title: String
    let content: String
    let reference: String
}
