//
//  TableViewCell.swift
//  testPrototype
//
//  Created by Baisampayan Saha on 1/28/19.
//  Copyright © 2019 Baisampayan Saha. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var data1Label: UILabel!
    @IBOutlet weak var data2Label: UILabel!
    @IBOutlet weak var profileImageStackView: UIStackView!
    
    
    func setup(model: Model) {
        titleLabel.text = model.title
        
        if model.subtitle.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) == "" {
            subtitleLabel.isHidden = true
        } else {
            subtitleLabel.isHidden = false
            subtitleLabel.text = model.subtitle
        }
        
        data1Label.text = model.data1
        data2Label.text = model.data2
        
        if model.images.count > 0 {
            profileImageStackView.translatesAutoresizingMaskIntoConstraints = false
            for image in model.images {
                let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
                imageView.image = image
                let height = imageView.heightAnchor.constraint(equalToConstant: 24)
                let width = imageView.widthAnchor.constraint(equalToConstant: 24)
                NSLayoutConstraint.activate([height, width])
                 profileImageStackView.addArrangedSubview(imageView)
            }
        }
    }
    
    
    
}
