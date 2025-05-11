//
//  Habit+CoreDataProperties.swift
//  Habit Tracker
//
//  Created by Elin Flyg on 2025-05-11.
//
//

import Foundation
import CoreData


extension Habit {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Habit> {
        return NSFetchRequest<Habit>(entityName: "Habit")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var createdAt: Date?
    @NSManaged public var lastDone: Date?
    @NSManaged public var streak: Int64

}

extension Habit : Identifiable {

}
