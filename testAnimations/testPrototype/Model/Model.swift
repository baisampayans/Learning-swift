//
//  Model.swift
//  testPrototype
//
//  Created by Baisampayan Saha on 1/28/19.
//  Copyright © 2019 Baisampayan Saha. All rights reserved.
//

import UIKit

class Model {
    var title = ""
    var subtitle = ""
    var images: [UIImage?]
    var data1 = ""
    var data2 = ""
    
    init(title: String, subtitle: String, images: [UIImage?], data1: String, data2: String) {
        self.title = title
        self.subtitle = subtitle
        self.images = images
        self.data1 = data1
        self.data2 = data2
    }
}


