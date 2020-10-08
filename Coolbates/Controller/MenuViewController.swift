//
//  MenuViewController.swift
//  Coolbates
//
//  Created by samosys on 06/10/20.
//  Copyright © 2020 samosys. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var collection_View: UICollectionView!
    @IBOutlet weak var viewHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        if UIScreen.main.sizeType == .iPhone6 {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.75)
            
        } else if UIScreen.main.sizeType == .iPhone7Plus {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.68)
            
        } else if UIScreen.main.sizeType == .iPhoneX {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.62)
            
        } else {
            
            viewHeight = viewHeight.setMultiplier(multiplier: 0.57)
        }
    }
    
    //MARK: - Custom Method
    
    @IBAction func back(_ sender: Any) {
        
    }
    

}

extension MenuViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MenuCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (collectionView.frame.size.width-20)/3, height: 140)
    }
}
