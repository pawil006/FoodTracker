//
//  Meal.swift
//  FoodTracker
//
//  Created by Paweł Krzykała on 18/02/2019.
//  Copyright © 2019 Paweł Krzykała. All rights reserved.
//

import UIKit

class Meal {
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name: String, photo: UIImage?, rating: Int) {
        if name.isEmpty || rating < 0 {
            return nil
        }
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
}
