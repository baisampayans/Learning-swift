//
//  StringX.swift
//  MakeMyTripClone
//
//  Created by Baisampayan Saha on 1/30/19.
//  Copyright © 2019 Baisampayan Saha. All rights reserved.
//

import UIKit

extension String {
    func strikeThrough() -> NSAttributedString {
        let attributeString = NSMutableAttributedString(string: self)
        attributeString.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSMakeRange(0, attributeString.length))
        return attributeString
    }
}
