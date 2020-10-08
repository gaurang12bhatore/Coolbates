//
//  ViewController.swift
//  Coolbates
//
//  Created by samosys on 22/09/20.
//  Copyright © 2020 samosys. All rights reserved.
//

import UIKit

class GetStarted: UIViewController {

    @IBOutlet weak var collection_View: UICollectionView!
    @IBOutlet weak var pageController: UIPageControl!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }

    //MARK: - Custom Method
    
    @IBAction func skip(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "SighInViewController") as! SighInViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func next(_ sender: Any) {
        
        let collectionBounds = self.collection_View.bounds
        let contentOffset = CGFloat(floor(self.collection_View.contentOffset.x + collectionBounds.size.width))
        self.moveCollectionToFrame(contentOffset: contentOffset)
    }
    
    func moveCollectionToFrame(contentOffset : CGFloat) {
        
        let frame: CGRect = CGRect(x : contentOffset ,y : self.collection_View.contentOffset.y ,width : self.collection_View.frame.width,height : self.collection_View.frame.height)
        self.collection_View.scrollRectToVisible(frame, animated: true)
    }
    
}

extension GetStarted: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        collectionView.isPrefetchingEnabled = false
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! GetstartedCell
        
        let paragraphStyle = NSMutableParagraphStyle()
        var attrString = NSMutableAttributedString(string: "")
        paragraphStyle.lineSpacing = 10
        paragraphStyle.alignment = .center
        
        if indexPath.item == 0 {
            
            attrString.addAttribute(.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
            cell.viewSignIn.isHidden = false
            cell.viewLabels.isHidden = true
            cell.imgImage.image = UIImage(named: "getstarted1")
            
        } else if indexPath.item == 1 {
            
            cell.viewSignIn.isHidden = true
            cell.viewLabels.isHidden = false
            cell.imgImage.image = UIImage(named: "getstarted2")
            attrString = NSMutableAttributedString(string: "Shop at your favourite\n stores just like you\n always do")
            attrString.addAttribute(.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
            cell.lblTitles.attributedText = attrString
            
        } else if indexPath.item == 2 {
            
            cell.viewSignIn.isHidden = true
            cell.viewLabels.isHidden = false
            cell.imgImage.image = UIImage(named: "getstarted3")
            attrString = NSMutableAttributedString(string: "Buy at your favourite\n stores to earn Cash\n Back")
            attrString.addAttribute(.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
            cell.lblTitles.attributedText = attrString
            
        } else if indexPath.item == 3 {
            
            cell.viewSignIn.isHidden = true
            cell.viewLabels.isHidden = false
            cell.imgImage.image = UIImage(named: "getstarted4")
            attrString = NSMutableAttributedString(string: "We'll mail you a check\n every quarter with your\n Cash Back")
            attrString.addAttribute(.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
            cell.lblTitles.attributedText = attrString
        }
        
        pageController.currentPage = indexPath.item
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collection_View.frame.size.width, height: collection_View.frame.size.height - 35)
    }
    
}

