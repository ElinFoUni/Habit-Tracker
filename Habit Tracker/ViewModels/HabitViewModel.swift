import Foundation
import CoreData

final class HabitViewModel: ObservableObject {
    @Published var habits: [Habit] = []
    private let context: NSManagedObjectContext

    init(context: NSManagedObjectContext = PersistenceController.shared.container.viewContext) {
        self.context = context
        fetch()
    }

    func fetch() {
        let request = Habit.fetchRequest()
        request.sortDescriptors = [NSSortDescriptor(key: "createdAt", ascending: true)]
        habits = (try? context.fetch(request)) ?? []
    }
    
    func addHabit(named name: String) {
            let habit = Habit(context: context)
            habit.id = UUID()
            habit.name = name
            habit.createdAt = Date()
            habit.currentStreak = 0
            save()
        }

        func toggleDone(for habit: Habit) {
            let today = Date()
            if let last = habit.lastDone, last.isSameDay(as: today) {
                // already checked today → uncheck
                habit.lastDone = nil
                habit.currentStreak -= 1
            } else {
                // mark done
                if let last = habit.lastDone, last.days(to: today) == 1 {
                    habit.currentStreak += 1      // keep streak going
                } else {
                    habit.currentStreak = 1       // reset streak
                }
                habit.lastDone = today
            }
            save()
        }

        private func save() {
            if context.hasChanges {
                try? context.save()
                fetch()
            }
        }
    }
    
