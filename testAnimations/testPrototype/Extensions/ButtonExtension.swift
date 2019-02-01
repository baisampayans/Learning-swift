//
//  ButtonExtension.swift
//  testPrototype
//
//  Created by Baisampayan Saha on 1/28/19.
//  Copyright © 2019 Baisampayan Saha. All rights reserved.
//

import UIKit

extension UIButton {
    func createFloatingActionButton() {
        backgroundColor = #colorLiteral(red: 1, green: 0.137254902, blue: 0.368627451, alpha: 1)
        layer.cornerRadius = frame.height / 2
        layer.shadowOpacity = 0.1
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowRadius = 2
    }
}
