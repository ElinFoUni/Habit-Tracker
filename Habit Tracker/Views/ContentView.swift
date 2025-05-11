import SwiftUI
import CoreData

struct ContentView: View {
    @StateObject private var vm = HabitViewModel()
    @State private var showingAdd = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.habits) { habit in
                    HabitView(habit: habit) {
                        vm.toggleDone(for: habit)
                    }
                    
                }
            }
            
            .navigationTitle("Habits")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button{
                        showingAdd = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                
            }
            .sheet(isPresented: $showingAdd){
                AddHabitView { name in
                    if !name.isEmpty {
                        vm.addHabit(named: name)
                    }
                    showingAdd = false
                }
            }
            
        }
        
    }
}
