//
//  TripCollectionViewCell.swift
//  CarouselApp
//
//  Created by Maxim on 15.06.2021.
//

import UIKit

class TripCollectionViewCell: UICollectionViewCell {
    var delegate: TripCollectionCellDelegate?
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var cityLabel: UILabel!
@IBOutlet var countryLabel: UILabel!
@IBOutlet var totalDaysLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    @IBAction func likeButtonTapped(sender: AnyObject){
        delegate?.didLikeButtonPressed(cell: self)
    }
    var isLiked:Bool = false {
didSet {
if isLiked {
likeButton.setImage(UIImage(systemName: "heart.fill"), for: .normal) } else {
likeButton.setImage(UIImage(systemName: "heart"), for: .normal) }
} }
    
}

protocol TripCollectionCellDelegate{
    func didLikeButtonPressed(cell: TripCollectionViewCell)
}
