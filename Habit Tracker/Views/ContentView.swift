//
//  ContentView.swift
//  Habit Tracker
//
//  Created by Elin Flyg on 2025-04-29.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @StateObject private var vm = HabitViewModel()
    @State private var showingAdd = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(
                    }
                    }
                    }
                    .navigationTitle("Habits")
                    .toolbar {
                        ToolbarItem(placement: .primaryAction) {
                            Button(systemName "plus") {
                                showingAdd = true
                            }
                        }
                    }
                    
                    }
                    
                    #Preview {
                        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
                    }
