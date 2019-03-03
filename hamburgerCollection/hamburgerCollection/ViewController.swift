//
//  ViewController.swift
//  hamburgerCollection
//
//  Created by Furkan Beyhan on 25.02.2019.
//  Copyright © 2019 Furkan Beyhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    
    let burgers = ["Big Mac", "Whopper", "bacnoator", "Quarter Pounder", "Hamburger", "CheeseBurger"]
    let burgerImages = [#imageLiteral(resourceName: "quarterPounder"),#imageLiteral(resourceName: "quarterPounder"),#imageLiteral(resourceName: "quarterPounder"),#imageLiteral(resourceName: "quarterPounder"),#imageLiteral(resourceName: "quarterPounder"),#imageLiteral(resourceName: "quarterPounder")]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return burgers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Sample1CollectionViewCell", for: indexPath) as! Sample1CollectionViewCell
        cell.sampleLbl.text = burgers[indexPath.row]
//        cell.hamburgerLabel.text = "aaaa"// burgers[indexPath.row].description
//        cell.hamburgerImageView.image = // burgerImages[indexPath.row]
        
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "Sample1CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Sample1CollectionViewCell")
        collectionView.reloadData()
    }


}

