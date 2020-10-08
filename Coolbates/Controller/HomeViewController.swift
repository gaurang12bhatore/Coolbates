//
//  HomeViewController.swift
//  Coolbates
//
//  Created by samosys on 26/09/20.
//  Copyright © 2020 samosys. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var scroll_View: UIScrollView!
    @IBOutlet weak var collectionCategory: UICollectionView!
    @IBOutlet weak var collectionFeatured: UICollectionView!
    @IBOutlet weak var collectionDaily: UICollectionView!
    @IBOutlet weak var collectionDailyHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        collectionDailyHeight.constant = CGFloat(260 * 4)
        
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == collectionCategory {
            
            return 3
            
        } else if collectionView == collectionFeatured {
            
            return 5
            
        } else {
            
            return 7
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionCategory {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CategoryCell
            
            return cell
            
        } else if collectionView == collectionFeatured {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeaturedCell", for: indexPath) as! CategoryCell
            
            return cell
            
        } else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DailyCell", for: indexPath) as! DailyCell
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == collectionCategory {
                        
            return CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
            
        } else if collectionView == collectionFeatured {
            
            return CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
            
        } else {
            
            return CGSize(width: (collectionDaily.frame.size.width-10)/2, height: 260)
            //return CGSize(width: (collectionDaily.frame.size.width - 5)/2, height: 260)
        }
    }
}
