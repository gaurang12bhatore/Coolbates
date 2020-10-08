//
//  VacationViewController.swift
//  Coolbates
//
//  Created by samosys on 01/10/20.
//  Copyright © 2020 samosys. All rights reserved.
//

import UIKit

class VacationViewController: UIViewController {

    @IBOutlet weak var collection_View: UICollectionView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        
    }
    
    //MARK: - Custom Method

    @IBAction func back(_ sender: Any) {
        
    }
    
    @IBAction func search(_ sender: Any) {
        
    }
    
    @IBAction func showProducts(_ sender: Any) {
        
    }
    
}

extension VacationViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! VacationsCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (collectionView.frame.size.width-10)/2, height: 275)
    }
}
