//
//  Dog+CoreDataProperties.swift
//  CoreDataExample
//
//  Created by Giftbot on 2017. 7. 5..
//  Copyright © 2017년 Giftbot. All rights reserved.
//

import Foundation
import CoreData

public class Dog: NSManagedObject {
  
}

extension Dog {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dog> {
        return NSFetchRequest<Dog>(entityName: "Dog")
    }

    @NSManaged public var age: Int32

}
