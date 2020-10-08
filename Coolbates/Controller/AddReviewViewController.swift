//
//  AddReviewViewController.swift
//  Coolbates
//
//  Created by samosys on 01/10/20.
//  Copyright © 2020 samosys. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField
import IQKeyboardManagerSwift
import Cosmos

class AddReviewViewController: UIViewController {

    @IBOutlet weak var viewRound: UIView!
    @IBOutlet weak var txtReviewTitle: SkyFloatingLabelTextField!
    @IBOutlet weak var txtReview: IQTextView!
    @IBOutlet weak var viewStar: CosmosView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        viewStar.settings.fillMode = .half
        viewStar.didFinishTouchingCosmos = didFinishTouchingCosmos
        
        if UIScreen.main.sizeType == .iPhone6 || UIScreen.main.sizeType == .iPhoneX {
            
            viewStar.settings.starSize = 59
            
        } else {
            
            viewStar.settings.starSize = 67
        }
    }
    
    //MARK:- StarRating Method
    
    func didFinishTouchingCosmos(_ rating: Double) {
        
      print(rating)
    }
    
    //MARK:- Custom Method
    
    @IBAction func back(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func submit(_ sender: Any) {
        
        
    }
    
}
