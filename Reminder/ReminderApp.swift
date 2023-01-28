//
//  ReminderApp.swift
//  Reminder
//
//  Created by 이진희 on 2023/01/28.
//

import SwiftUI

@main
struct ReminderApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
