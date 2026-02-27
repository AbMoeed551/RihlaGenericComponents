//
//  TextFieldView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 12/02/2026.
//

import SwiftUI
struct TextFieldStyle {
    let textFieldplaceholder: String
    init(textFieldplaceholder: String) {
        self.textFieldplaceholder = textFieldplaceholder
    }
}

struct TextFieldView: View {
    @State private var text: String = ""
    let style: TextFieldStyle
    init(text: String, style: TextFieldStyle) {
        self.text = text
        self.style = style
    }
    var body: some View {
        HStack{
            TextField("", text: $text, prompt: Text(style.textFieldplaceholder
                )
                .foregroundColor(Color(
                    red: 137/255,
                    green: 137/255,
                    blue: 137/255
                ))
                .font(.dmSansMedium(16)))
            
        }
        .padding()
        .frame(width: 362, height: 53)
        .background(Color.lightGray)
        .cornerRadius(52)
    }
}

#Preview {
    TextFieldView(text: "", style: TextFieldStyle(textFieldplaceholder: "Name"))
}
