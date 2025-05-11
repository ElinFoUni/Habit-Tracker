extension Date {
    // prevents multiple checks the same day counting twice.
    func isSameDay(as other: Date, in calendar: Calendar = .current) -> Bool {
        calendar.isDate(self, inSameDayAs: other)
    }
    
    // check how many days (for streak)
    func days(to other: Date, in calendar: Calendar = .current) -> Int {
            calendar.dateComponents([.day], from: self, to: other).day ?? 0
        }
}
