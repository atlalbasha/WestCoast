//
//  Courses+CoreDataProperties.swift
//  WestCoast
//
//  Created by Atlal Basha on 2021-02-26.
//
//

import Foundation
import CoreData


extension Courses {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Courses> {
        return NSFetchRequest<Courses>(entityName: "Courses")
    }

    @NSManaged public var courseName: String?
    @NSManaged public var courseDescription: String?
    @NSManaged public var courseList: User?

}

extension Courses : Identifiable {

}
