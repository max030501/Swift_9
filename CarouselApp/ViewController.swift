//
//  ViewController.swift
//  CarouselApp
//
//  Created by Maxim on 15.06.2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource, TripCollectionCellDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int { return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return trips.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! TripCollectionViewCell
        cell.cityLabel.text = trips[indexPath.row].city
        cell.countryLabel.text = trips[indexPath.row].country
        cell.imageView.image = trips[indexPath.row].featuredImage
        cell.priceLabel.text = "$\(String(trips[indexPath.row].price))"
        cell.totalDaysLabel.text = "\(trips[indexPath.row].totalDays) days"
        cell.isLiked = trips[indexPath.row].isLiked
        cell.layer.cornerRadius = 4.0
        cell.delegate = self
        return cell
    }
    
    @IBOutlet var collectionView: UICollectionView!
    private var trips = [Trip(tripId: "Paris001", city: "Paris", country: "France", featuredImage: UIImage(named: "paris"), price: 2000, totalDays: 5, isLiked: false),
    Trip(tripId: "Rome001", city: "Rome", country: "Italy", featuredImage: UIImage(named: "paris"), price: 800, totalDays: 3, isLiked: false),
    Trip(tripId: "Istanbul001", city: "Istanbul", country: "Turkey",
    featuredImage: UIImage(named: "paris"), price: 2200, totalDays: 10, isLiked: false), ]
    override func viewDidLoad() {
        
        super.viewDidLoad()
        collectionView.backgroundColor = UIColor.clear
      
        // Do any additional setup after loading the view.
    }
    func didLikeButtonPressed(cell: TripCollectionViewCell) {
        
        if let indexPath = collectionView.indexPath(for: cell) {
            if cell.isLiked{
                cell.isLiked = false
                trips[indexPath.row].isLiked = false
            }else
            {
                cell.isLiked = true
                trips[indexPath.row].isLiked = true
            }
    } }

}

