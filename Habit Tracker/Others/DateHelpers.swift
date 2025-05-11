import Foundation

extension Date {
    func isSameDay(as other: Date,
                   in calendar: Calendar = .current) -> Bool {
        calendar.isDate(self, inSameDayAs: other)
    }

    func days(to other: Date,
              in calendar: Calendar = .current) -> Int {
        calendar.dateComponents([.day], from: self, to: other).day ?? 0
    }
}
