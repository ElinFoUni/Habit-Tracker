//
//  AddHabitView.swift
//  Habit Tracker
//
//  Created by Elin Flyg on 2025-05-11.
//

import SwiftUI

struct AddHabitView: View {
    @State private var name = ""
    var done: (String) -> Void
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Habit title:", text: $name)
            }
            .navigationTitle("Add New Habit")
            .toolbar {
                ToolbarItem(placement: confirmationAction) {
                    Button("Save") {
                        done(name.trimmingCharacters(in: whitespacesAndNewlines))
                    }
                    .disabkle(name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                }
                ToolbarItem(placement: cancellationAction) {
                    Button("Cancel") { done("")}
                }
            }
        }
    }
}

#Preview {
    AddHabitView()
}
