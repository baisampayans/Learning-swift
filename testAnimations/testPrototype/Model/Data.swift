//
//  Data.swift
//  testPrototype
//
//  Created by Baisampayan Saha on 1/28/19.
//  Copyright © 2019 Baisampayan Saha. All rights reserved.
//

import UIKit
    
class Data {
    static func getData(completion: @escaping ([Model])-> ()) {
        DispatchQueue.global(qos: .userInteractive).async {
            var data = [Model]()
            data.append(Model(title: "Finish Home Screen", subtitle: "Web App", images: [], data1: "8", data2: "AM"))
            data.append(Model(title: "Lunch Break", subtitle: "", images: [], data1: "11", data2: "AM"))
            data.append(Model(title: "Design Standup", subtitle: "Hangouts", images: getImages(), data1: "2", data2: "PM"))
            DispatchQueue.main.async {
                completion(data)
            }
        }
    }
    
    static func getImages() -> [UIImage] {
        var images = [UIImage]()
        images.append(#imageLiteral(resourceName: "profile3"))
        images.append(#imageLiteral(resourceName: "profile2"))
        images.append(#imageLiteral(resourceName: "profile4"))
        images.append(#imageLiteral(resourceName: "profile7"))
        images.append(#imageLiteral(resourceName: "profile5"))
   
        
        return images
    }
    static func getDayAndWeather(completion: @escaping (DayWeatherModel?) -> ()) {
        DispatchQueue.global(qos: .userInteractive).async {
            let data = DayWeatherModel(dayName: "Monday", longDate: "February 8, 2019", temperature: "27°", city: "Bangalore", weatherIcon: #imageLiteral(resourceName: "sun"))
            
            DispatchQueue.main.async {
                completion(data)
            }
            
        }
    }
    
}
