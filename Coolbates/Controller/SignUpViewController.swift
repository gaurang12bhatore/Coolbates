//
//  SignUpViewController.swift
//  Coolbates
//
//  Created by samosys on 24/09/20.
//  Copyright © 2020 samosys. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class SignUpViewController: UIViewController {

    @IBOutlet weak var viewRound: UIView!
    @IBOutlet weak var txtFirstName: SkyFloatingLabelTextField!
    @IBOutlet weak var txtLastName: SkyFloatingLabelTextField!
    @IBOutlet weak var txtEmail: SkyFloatingLabelTextField!
    @IBOutlet weak var txtMobileNumber: SkyFloatingLabelTextField!
    @IBOutlet weak var txtPassword: SkyFloatingLabelTextField!
    @IBOutlet weak var btnIAgree: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        viewRound.layer.cornerRadius = 30
        viewRound.clipsToBounds = true
        viewRound.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
    
    //MARK:- Custom Method
    
    @IBAction func back(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func IAgree(_ sender: Any) {
        
    }
    
    @IBAction func signUp(_ sender: Any) {
        
    }
    
    @IBAction func signIn(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
