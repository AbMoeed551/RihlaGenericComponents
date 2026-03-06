//
//  NotficationCellTest.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 03/03/2026.
//

import SwiftUI

struct NotficationCellTest: View {
    @State private var adhkarReminder = false
      @State private var notificationSound = false
      @State private var vibrationSound = false
      @State private var settingEnable = false
     var body :  some View {
        VStack{
            Form {
                NotficationCell(
                    isToggleEnable: $adhkarReminder,
                    style: NotficationCellStyle(cellLabel: "Adhkar Reminder")
                )
                .onChange(of: adhkarReminder) {
                    if adhkarReminder {
                        print("moeed")
                    } else {
                        print("afaq")
                    }
                }
                        
                    
                
                NotficationCell(
                                isToggleEnable: $notificationSound,
                                style: NotficationCellStyle(cellLabel: "Notification Sound")
                            )
                .onChange(of: notificationSound) {
                    print(notificationSound ? "Enable Sound" : "Disable Sound")
                }
                
                NotficationCell(
                                isToggleEnable: $vibrationSound,
                                style: NotficationCellStyle(cellLabel: "Vibration")
                            )
                .onChange(of: vibrationSound) {
                    print(vibrationSound ? " Sound" : "No Sound")
                }
                
                NotficationCell(
                                isToggleEnable: $settingEnable,
                                style: NotficationCellStyle(cellLabel: "Setting Enabled")
                            )
                .onChange(of: settingEnable) {
                    print(settingEnable ? "Enable Setting " : "Disable Setting")
                }
            }
        }
    }
}

#Preview {
    NotficationCellTest()
}
