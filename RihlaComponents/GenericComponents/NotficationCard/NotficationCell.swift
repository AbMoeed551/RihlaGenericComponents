//
//  NotficationCell.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 03/03/2026.
//

import SwiftUI
struct NotficationCellStyle {
    let cellLabel: String
    init(cellLabel: String) {
        self.cellLabel = cellLabel
    }
}

struct NotficationCell: View {
    
    @Binding var isToggleEnable: Bool
    let style: NotficationCellStyle
    
    var body: some View {
        HStack {
            MeduimText(
                style: MediumTextStyle(
                    text: style.cellLabel,
                    size: 16,
                    color: .black
                )
            )
            Spacer()
            
            Toggle("", isOn: $isToggleEnable)
        }
        .padding(.vertical, 4)
       
        
    }
    
    
   
}

#Preview {
    List {
        NotficationCell( isToggleEnable: .constant(true), style: NotficationCellStyle(cellLabel: "Adhkar Reminder"))
    }
}
