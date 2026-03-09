//
//  SelectDhikrView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 09/03/2026.
//

//
//  SelectDhikrView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 09/03/2026.
//

import SwiftUI

struct DhikrItemStyle {
    let title: String?
    let image: String?
    init(title: String?, image: String?) {
        self.title = title
        self.image = image
    }
}

struct SelectDhikrView: View {
    let items: [DhikrItemStyle]
    @Binding var selectedIndex: Int
    var body: some View {
        HStack(spacing: 8) {
            
            ForEach(items.indices, id: \.self) { index in
                let item = items[index]
                ZStack {
                    Circle()
                        .fill(selectedIndex == index ? Color.jungleGreen : Color.lightGray)
                        .frame(width: 48, height: 48)
                    
                    if let title = item.title {
                        SemiBoldText(style: .init(text: title, textColor: selectedIndex == index ? .white : .jungleGreen, textSize: 18))
                    }
                    
                    if let image = item.image {
                        Image(image)
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.2)) {
                    selectedIndex = index
                }
                }
            }
        }
    }
}
struct PracticeView: View {
    
    @State var selectedIndex = 0
    
    var body: some View {
        VStack{
          
        SelectDhikrView(
            items: [
                .init(title: "60", image: ""),
                .init(title: "80", image: ""),
                .init(title: "90", image: ""),
                .init(title: "100", image: ""),
                .init(title: "", image: "pencilIcon")
            ],
            selectedIndex: $selectedIndex
        )
        
        .onChange(of: selectedIndex) { oldValue, newValue in
            
            if newValue == 0 {
                print("60 selected")
            }
            
            if newValue == 4 {
                print("Edit tapped")
            }
        }
    }
}
}

#Preview{
    PracticeView()
}
