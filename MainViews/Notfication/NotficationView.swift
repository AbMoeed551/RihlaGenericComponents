//
//  NotficationView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 06/03/2026.
//

import SwiftUI

struct NotficationView: View {
    
    @State private var adhkarReminder = false
    @State private var notificationSound = false
    @State private var vibrationSound = false
    @State private var settingEnable = false
    
    var body: some View {
        
        RihlaScreenContainer(style: .init(title: "Notficatons", baseStyle: .none)) {
            
            VStack {
                
                VStack(spacing: 8) {
                    
                    NotficationCell(
                        isToggleEnable: $adhkarReminder,
                        style: NotficationCellStyle(cellLabel: "Prayer Time Alerts")
                        
                    )
                    .onChange(of: adhkarReminder) { if adhkarReminder { print("moeed") } else { print("afaq") } }
                    
                    Divider()
                    NotficationCell(
                        isToggleEnable: $notificationSound,
                        style: NotficationCellStyle(cellLabel: "Adhkar Reminder")
                    )
                    
                    Divider()
                    
                    NotficationCell(
                        isToggleEnable: $vibrationSound,
                        style: NotficationCellStyle(cellLabel: "Daily Dua Reminder")
                    )
                    
                    Divider()
                    
                    NotficationCell(
                        isToggleEnable: $settingEnable,
                        style: NotficationCellStyle(cellLabel: "Daily Goal Reminder")
                    )
                }
                .padding()
                .background(Color.white)
                .cornerRadius(16)
                .padding(.top, 24)
           
                
                //Spacer()
            }
        }
    }
}

#Preview {
    NotficationView()
}
