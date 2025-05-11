import SwiftUI

struct AddHabitView: View {
    @State private var name = ""
    @FocusState private var nameFieldIsFocused: Bool
    var done: (String) -> Void

    var body: some View {
        NavigationStack {
            Form {
                TextField("Habit name", text: $name)
                    .focused($nameFieldIsFocused)
            }
            .navigationTitle("New Habit")
            .onAppear { nameFieldIsFocused = true }  
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { done("") }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        done(name.trimmingCharacters(in: .whitespacesAndNewlines))
                    }
                    .disabled(name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                }
            }
        }
    }
}
