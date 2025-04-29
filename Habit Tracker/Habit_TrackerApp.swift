//
//  Habit_TrackerApp.swift
//  Habit Tracker
//
//  Created by Elin Flyg on 2025-04-29.
//

import SwiftUI

@main
struct Habit_TrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
