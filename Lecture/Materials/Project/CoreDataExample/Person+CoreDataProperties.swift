//
//  Person+CoreDataProperties.swift
//  CoreDataExample
//
//  Created by Giftbot on 2017. 7. 5..
//  Copyright © 2017년 Giftbot. All rights reserved.
//

import Foundation
import CoreData

public class Person: NSManagedObject {

}

extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var age: Int32
    @NSManaged public var name: String?
    @NSManaged public var dogs: Dog?

}
