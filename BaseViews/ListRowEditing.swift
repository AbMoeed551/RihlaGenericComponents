//
//  ListRowEditing.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 05/03/2026.
//
import SwiftUI

struct ListModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .listRowInsets(EdgeInsets())
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
    }
}
extension View {
    public func listRowEditing() -> some View {
        self.modifier(ListModifier())
    }
}
