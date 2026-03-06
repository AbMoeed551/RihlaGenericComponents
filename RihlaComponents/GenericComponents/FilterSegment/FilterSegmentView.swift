//
//  FilterSegmentView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 20/02/2026.
//



import SwiftUI

// 1. Define a model with a label and action
struct FilterItem {
    let label: String
    let action: () -> Void
    init(label: String, action: @escaping () -> Void) {
        self.label = label
        self.action = action
    }
}

struct SimpleFilterView: View {
    
    let items: [FilterItem]
    @Binding var selected: String
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(items, id: \.label) { item in
                    MeduimText(style: .init(text: item.label, size: 13, color: selected == item.label ? Color.white : Color.black))
                        .padding(.horizontal, 18)
                        .padding(.vertical, 13.5)
                        .background(
                            Capsule()
                                .fill(selected == item.label ? Color.jungleGreen : Color.gray.opacity(0.2))
                        )
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                selected = item.label
                            }
                            item.action()
                        }
                }
            }
            //.padding(.horizontal)
        }
    }
}

#Preview {
    PreviewWrapper()
}

private struct PreviewWrapper: View {
    @State private var selected = "All"
    
    var body: some View {
        VStack {
            SimpleFilterView(
                items: [
                    FilterItem(label: "All") {
                        print("Show all items")
                    },
                    FilterItem(label: "Moeed") {
                        print("Filter by Moeed")
                    },
                    FilterItem(label: "Favorites") {
                        print("Show favorites")
                    },
                    FilterItem(label: "Evening/Morning") {
                        print("morning/Evening")
                    },
                    FilterItem(label: "Day/Night") {
                        print("Day/Night")
                    },
                    
                    
                ],
                selected: $selected
            )
            Spacer()
        }
    }
}
