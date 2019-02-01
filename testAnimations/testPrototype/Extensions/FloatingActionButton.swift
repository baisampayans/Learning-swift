//
//  FloatingActionButton.swift
//  testPrototype
//
//  Created by Baisampayan Saha on 1/28/19.
//  Copyright © 2019 Baisampayan Saha. All rights reserved.
//

import UIKit

@IBDesignable class FloatingActionButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }

    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        
        UIView.animate(withDuration: 0.3) {
            if self.transform == .identity {
                self.transform = CGAffineTransform(rotationAngle: 45*(.pi/180))
                self.backgroundColor = #colorLiteral(red: 0.7779056079, green: 0.137254902, blue: 0.368627451, alpha: 1)
            } else {
                self.transform = .identity
                self.backgroundColor = #colorLiteral(red: 1, green: 0.137254902, blue: 0.368627451, alpha: 1)
            }
        }
        
        return super.beginTracking(touch, with: event)
    }

}

