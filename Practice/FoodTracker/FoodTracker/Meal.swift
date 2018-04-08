//
//  Meal.swift
//  FoodTracker
//
//  Created by dave on 08/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class Meal {
  
  // MARK: Properites
  
  var name: String
  var photo: UIImage?
  var rating: Int
  
  // MARK: Initialization
  
  init?(name: String, photo: UIImage?, rating: Int) {
    
    // The name must not be empty
    guard !name.isEmpty else {
      return nil
    }
    
    // The rating must be between 0 and 5 incluusively
    guard (rating >= 0) && (rating <= 5) else {
      return nil
    }
    
    // Initializer stored properties.
    self.name = name
    self.photo = photo
    self.rating = rating
  }
}
