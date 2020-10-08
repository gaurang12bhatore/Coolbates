//
//  ForgotPasswordViewController.swift
//  Coolbates
//
//  Created by samosys on 24/09/20.
//  Copyright © 2020 samosys. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var viewRound: UIView!
    @IBOutlet weak var txtEmail: SkyFloatingLabelTextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        
    }
    
    //MARK:- Custom Method
    
    @IBAction func back(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func submit(_ sender: Any) {
        
    }

    @IBAction func signIn(_ sender: Any) {
        
    }
    
}
