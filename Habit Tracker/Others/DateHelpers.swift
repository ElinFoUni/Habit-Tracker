import Foundation

extension Date {
    
    // prevents gaining streaks by pressing the button multiple times
    func isSameDay(as other: Date,
                   in calendar: Calendar = .current) -> Bool {
        calendar.isDate(self, inSameDayAs: other)
    }

    // checks how long the streak is
    func days(to other: Date,
              in calendar: Calendar = .current) -> Int {
        calendar.dateComponents([.day], from: self, to: other).day ?? 0
    }
}
