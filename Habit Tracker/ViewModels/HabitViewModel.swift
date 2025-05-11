final class HabitViewModel: ObservableObject {
    @Published var habits: [Habit] = []
    private let context: NSManagedObjectContext
    
    init(context: NSManagedObjectContext = PersistenceController.shared.container.viewContext) {
        self.context = context
        fetch()
    }
    
    func fetch() {
        let request = Habit.fetchRequest()
        request
    }
    
    
}
