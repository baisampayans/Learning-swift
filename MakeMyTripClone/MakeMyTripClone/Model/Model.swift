//
//  Model.swift
//  MakeMyTripClone
//
//  Created by Baisampayan Saha on 1/30/19.
//  Copyright © 2019 Baisampayan Saha. All rights reserved.
//

import UIKit

class Model {
    
    var image1: UIImage?
    var image2: UIImage?
    var rating = ""
    var numberOfReviews = ""
    var hotelName = ""
    var city = ""
    var starType: UIImage?
    var persuassion1 = ""
    var persuassion2 = ""
    var actualPrice = ""
    var reducedPrice = ""
    var discount = ""
    var discountPercent = ""
    var persuassion3: String?
    
    init(image1: UIImage, image2: UIImage, rating: String, numberOfReviews: String, hotelName: String, city: String, starType: UIImage, persuassion1: String, persuassion2: String, actualPrice: String, reducedPrice: String, discount: String, discountPercent: String, persuassion3: String) {
        self.image1 = image1
        self.image2 = image2
        self.rating = rating
        self.numberOfReviews = numberOfReviews
        self.hotelName = hotelName
        self.city = city
        self.starType = starType
        self.persuassion1 = persuassion1
        self.persuassion2 = persuassion2
        self.actualPrice = actualPrice
        self.reducedPrice = reducedPrice
        self.discount = discount
        self.discountPercent = discountPercent
        self.persuassion3 = persuassion3
    }
}
