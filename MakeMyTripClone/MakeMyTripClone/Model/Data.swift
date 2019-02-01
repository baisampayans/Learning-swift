//
//  Data.swift
//  MakeMyTripClone
//
//  Created by Baisampayan Saha on 1/30/19.
//  Copyright © 2019 Baisampayan Saha. All rights reserved.
//

import UIKit

class Data {
    static func getData(completion: @escaping ([Model])->()) {
        DispatchQueue.global(qos: .userInteractive).async {
            var data = [Model]()
            data.append(Model(image1: #imageLiteral(resourceName: "hotel6a"), image2: #imageLiteral(resourceName: "hotel3a"), rating: "4.2", numberOfReviews: "(2899 Reviews)", hotelName: "Welcome Hotel Dwarka, Member of ITC", city: "Dwarka", starType: #imageLiteral(resourceName: "5star"), persuassion1: "Free Cancellation available", persuassion2: "Free Breakfast", actualPrice: "9350", reducedPrice: "5904", discount: "\(9350-5904)", discountPercent: "(\((9350 - 5904)*100/9350)%)", persuassion3: "Travelers Choice - More than 1500 bookings by solo travelers"))
            
            data.append(Model(image1: #imageLiteral(resourceName: "hotel3b"), image2: #imageLiteral(resourceName: "hotel1b"), rating: "4.1", numberOfReviews: "(3121 Reviews)", hotelName: "Country Inn and Suites By Radisson", city: "Sector 29", starType: #imageLiteral(resourceName: "4star"), persuassion1: "Free Wifi", persuassion2: "Free Breakfast", actualPrice: "5555", reducedPrice: "4252", discount: "\(5555-4252)", discountPercent: "(\((5555 - 4252)*100/5555)%)", persuassion3: ""))
            
            data.append(Model(image1: #imageLiteral(resourceName: "hotel7a"), image2: #imageLiteral(resourceName: "hotel2b"), rating: "3.5", numberOfReviews: "(3917 Reviews)", hotelName: "Fraser Suites New Delhi", city: "Mayur Vihar", starType: #imageLiteral(resourceName: "3.5star"), persuassion1: "Free cancellation available", persuassion2: "Free Breakfast", actualPrice: "8000", reducedPrice: "4831", discount: "\(8000-4831)", discountPercent: "(\((8000-4831)*100/8000)%)", persuassion3: ""))
            
            data.append(Model(image1: #imageLiteral(resourceName: "hotel2a"), image2: #imageLiteral(resourceName: "hotel4a"), rating: "2.8", numberOfReviews: "(1213 Reviews)", hotelName: "Roseate House New Delhi", city: "Indira Gandhi INternational Airport", starType: #imageLiteral(resourceName: "2star"), persuassion1: "Free cancellation available", persuassion2: "Free Breakfast", actualPrice: "14,900", reducedPrice: "9,690", discount: "\(14900-9690)", discountPercent: "(\((14900-9690)*100/14900)%)", persuassion3: "Travelers Choice - More than 1500 bookings by solo travelers"))
            
            data.append(Model(image1: #imageLiteral(resourceName: "hotel6b"), image2: #imageLiteral(resourceName: "hotel5a"), rating: "3.5", numberOfReviews: "(2314 Reviews)", hotelName: "Welcome Hotel Dwarka, Member of ITC", city: "Dwarka", starType: #imageLiteral(resourceName: "2.5star"), persuassion1: "Free cancellation available", persuassion2: "Free Breakfast", actualPrice: "10000", reducedPrice: "6748", discount: "\(10000-6748)", discountPercent: "(\((10000-6748)*100/10000)%)", persuassion3: "Travelers Choice - More than 500 bookings by solo travelers"))
            
            data.append(Model(image1: #imageLiteral(resourceName: "hotel7a"), image2: #imageLiteral(resourceName: "hotel2b"), rating: "4.0", numberOfReviews: "(3917 Reviews)", hotelName: "Fraser Suites New Delhi", city: "Mayur Vihar", starType: #imageLiteral(resourceName: "3.5star"), persuassion1: "Free cancellation available", persuassion2: "Free Breakfast", actualPrice: "8000", reducedPrice: "4831", discount: "\(8000-4831)", discountPercent: "(\((8000-4831)*100/8000)%)", persuassion3: ""))
            
            data.append(Model(image1: #imageLiteral(resourceName: "hotel6a"), image2: #imageLiteral(resourceName: "hotel3a"), rating: "4.2", numberOfReviews: "(2899 Reviews)", hotelName: "Welcome Hotel Dwarka, Member of ITC", city: "Dwarka", starType: #imageLiteral(resourceName: "5star"), persuassion1: "Free Cancellation available", persuassion2: "Free Breakfast", actualPrice: "9350", reducedPrice: "5904", discount: "\(9350-5904)", discountPercent: "(\((9350 - 5904)*100/9350)%)", persuassion3: "Travelers Choice - More than 1500 bookings by solo travelers"))
            
            
            DispatchQueue.main.async {
                completion(data)
            }
            
        }
    }
    
//    func getDiscount(model: Model) -> String {
//        let actualPrice = Float(model.actualPrice)
//        let reducedPrice = Float(model.reducedPrice)
//        let discount: Float = (actualPrice! - reducedPrice!)
//        
//        return String(discount)
//    }
    

}
