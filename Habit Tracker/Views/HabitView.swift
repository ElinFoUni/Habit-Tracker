//
//  HabitView.swift
//  Habit Tracker
//
//  Created by Elin Flyg on 2025-05-11.
//

import SwiftUI

struct HabitView: View {
    @ObservedObject var habit: Habit
    var toggle: () -> Void
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(habit.name)
                Text("🔥 \(habit.currentStreak) day streak")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            // changes the look of the checkmark depending on if the button has been toggled or not
            Button(action: toggle) {
                Image(systemName: habit.lastDone?.isSameDay(as: .now) == true ? "checkmark.circle.fill" : "circle")
                    .imageScale(.large)
            }
            .buttonStyle(.plain)
            .cornerRadius(15)
        }
    }
}

#Preview {
    HabitView()
}
