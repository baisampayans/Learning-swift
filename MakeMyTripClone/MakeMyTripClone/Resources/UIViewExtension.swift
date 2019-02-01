//
//  UIViewX.swift
//  MakeMyTripClone
//
//  Created by Baisampayan Saha on 1/30/19.
//  Copyright © 2019 Baisampayan Saha. All rights reserved.
//

import UIKit

@IBDesignable class setupUIView: UIView {
    
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
}
}

@IBDesignable class setupUIViewButton: UIButton {
    
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
}

