//
//  User+CoreDataProperties.swift
//  WestCoast
//
//  Created by Atlal Basha on 2021-02-26.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var userName: String?
    @NSManaged public var userEmail: String?
    @NSManaged public var userMobile: String?
    @NSManaged public var userPassword: String?
    @NSManaged public var userCourses: NSSet?

}

// MARK: Generated accessors for userCourses
extension User {

    @objc(addUserCoresesObject:)
    @NSManaged public func addToUserCourses(_ value: Courses)

    @objc(removeUserCoresesObject:)
    @NSManaged public func removeFromUserCourses(_ value: Courses)

    @objc(addUserCoreses:)
    @NSManaged public func addToUserCourses(_ values: NSSet)

    @objc(removeUserCoreses:)
    @NSManaged public func removeFromUserCourses(_ values: NSSet)

}

extension User : Identifiable {

}
