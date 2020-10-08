//
//  AccountInformationViewController.swift
//  Coolbates
//
//  Created by samosys on 07/10/20.
//  Copyright © 2020 samosys. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class AccountInformationViewController: UIViewController {

    @IBOutlet weak var imgUserImage: UIImageView!
    @IBOutlet weak var txtFirstName: SkyFloatingLabelTextField!
    @IBOutlet weak var txtLLastName: SkyFloatingLabelTextField!
    @IBOutlet weak var txtAddress1: SkyFloatingLabelTextField!
    @IBOutlet weak var txtAddress2: SkyFloatingLabelTextField!
    @IBOutlet weak var txtCity: SkyFloatingLabelTextField!
    @IBOutlet weak var txtState: SkyFloatingLabelTextField!
    @IBOutlet weak var txtZipCode: SkyFloatingLabelTextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        
    }
    
    //MARK: - Custom Method

    @IBAction func back(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func uploadPhoto(_ sender: Any) {
        
    }
    
    @IBAction func update(_ sender: Any) {
        
    }
    
}
