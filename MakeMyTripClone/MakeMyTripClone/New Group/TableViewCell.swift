//
//  TableViewCell.swift
//  MakeMyTripClone
//
//  Created by Baisampayan Saha on 1/30/19.
//  Copyright © 2019 Baisampayan Saha. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var ratingView: setupUIView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var hotelNameLabel: UILabel!
    @IBOutlet weak var starRatingImage: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var persuassion1Label: UILabel!
    @IBOutlet weak var persuassion2Label: UILabel!
    @IBOutlet weak var actualPriceLabel: UILabel!
    @IBOutlet weak var reducedPriceLabel: UILabel!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var discountPercentLabel: UILabel!
    @IBOutlet weak var persuassion3Label: UILabel!
    @IBOutlet weak var likeButton: setupUIViewButton!
    
    var isfilled = false
    
    func setup(model: Model){
        image1.image = model.image1
        image2.image = model.image2
        ratingLabel.text = model.rating
        reviewLabel.text = model.numberOfReviews
        hotelNameLabel.text = model.hotelName
        starRatingImage.image = model.starType
        cityLabel.text = model.city
        persuassion1Label.text = model.persuassion1
        persuassion2Label.text = model.persuassion2
        actualPriceLabel.text = model.actualPrice
        reducedPriceLabel.text = model.reducedPrice
        discountLabel.text = model.discount
        discountPercentLabel.text = model.discountPercent
        persuassion3Label.text = model.persuassion3
        
        let rating = Double(model.rating)
        
        if rating! >= 4.0 {
            ratingView.backgroundColor = Theme.reviewGoodColor
        }
        if rating! < 4.0 && rating! >= 3.0{
            ratingView.backgroundColor = Theme.reviewAverageColor
        }
        
        if rating! < 3.0 {
            ratingView.backgroundColor = Theme.reviewBadColor
        }
        
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//        actualPriceLabel.text?.strikeThrough()
//        ratingView.backgroundColor = UIColor.gray

        
        
    }
    
    
    
    @IBAction func likeButton(_ sender: setupUIViewButton) {
        
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
            if self.isfilled {
                self.likeButton.setImage(#imageLiteral(resourceName: "heartFilled"), for: .normal)
                self.isfilled = false
            } else {
                self.likeButton.setImage(#imageLiteral(resourceName: "heartOutline"), for: .normal)
                self.isfilled = true
            }
        })
        
        
        
    }
    
    
}
